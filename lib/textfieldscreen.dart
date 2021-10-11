import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:textfieldscreen/textfieldscreen2.dart';

class TextfieldScreen extends StatefulWidget {
  const TextfieldScreen({Key? key}) : super(key: key);

  @override
  State<TextfieldScreen> createState() => _TextfieldScreenState();
}

class _TextfieldScreenState extends State<TextfieldScreen> {
  bool isTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.push(context,
        //         MaterialPageRoute(builder: (context) => TextfieldScreen2()));
        //   },
        //   icon: Icon(Icons.arrow_right),
        // ),
        title: Center(child: Text("Text field Screen")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset(
              "assets/allu.jpg",
              width: 150,
              height: 150,
            ),
            Text(
              "Welcome Back!",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Log into your existing account of Q Allure",
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onTap: () {
                setState(() {
                  isTap = true;
                });
              },
              decoration: InputDecoration(
                hintText: "youremail@gmail.com",
                hintStyle: TextStyle(color: isTap ? Colors.blue : Colors.grey),
                // labelText: " Your Email",
                labelStyle: TextStyle(color: isTap ? Colors.blue : Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  // borderSide: BorderSide(
                  //   color: Colors.lightBlue,
                  //   width: 2,
                  // ),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),

                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.person,
                  color: isTap ? Colors.blue : Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onTap: () {
                setState(() {
                  isTap = true;
                });
              },
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                hintStyle: TextStyle(color: isTap ? Colors.blue : Colors.grey),
                // labelText: "Your Password",
                labelStyle: TextStyle(color: isTap ? Colors.blue : Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,

                  // borderSide: BorderSide(
                  //   color: Colors.lightBlue,
                  //   width: 2,
                  // ),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.lock_open,
                  color: isTap ? Colors.blue : Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade800,
                  elevation: 20,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Or Connect using ",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black45,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200,
                    height: 48,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.facebook),
                      label: Text("Facebook"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade900,
                        shadowColor: Colors.black,
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    height: 48,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.google),
                      label: Text("Google"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red.shade500,
                        shadowColor: Colors.black,
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Dont have an account?",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TextfieldScreen2()));
                },
                icon: Icon(
                  Icons.arrow_right,
                  color: Colors.black45,
                ),
                label: Text(""),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey.withOpacity(0.2),
                  // shadowColor: Colors.black,
                  elevation: 20,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.zero),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
