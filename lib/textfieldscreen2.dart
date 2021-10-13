import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextfieldScreen2 extends StatefulWidget {
  const TextfieldScreen2({Key? key}) : super(key: key);

  @override
  State<TextfieldScreen2> createState() => _TextfieldScreen2State();
}

class _TextfieldScreen2State extends State<TextfieldScreen2> {
  bool isTap = false;
  bool isTap2 = false;
  bool isTap3 = false;
  bool isTap4 = false;
  bool isTap5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: Colors.black,
      //     ),
      //   ),
      //   title: Text("Textfield Screen 2"),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Text(
            "Lets Get Started!",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            "Create an account to Q Allure to get all features ",
            style: TextStyle(fontSize: 15, color: Colors.black54),
          ),

          // Text field for your name
          TextField(
            onTap: () {
              setState(() {
                isTap = true;
                isTap2 = false;
                isTap3 = false;
                isTap4 = false;
                isTap5 = false;
              });
            },
            decoration: InputDecoration(
              hintText: "Name",
              hintStyle: TextStyle(color: isTap ? Colors.blue : Colors.grey),
              // labelText: "Your name",
              labelStyle: TextStyle(color: isTap ? Colors.blue : Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(
                Icons.person,
                color: isTap ? Colors.blue : Colors.grey,
              ),
            ),
          ),

          // Textfield for email

          TextField(
            onTap: () {
              setState(() {
                isTap2 = true;
                isTap = false;
                isTap3 = false;
                isTap4 = false;
                isTap5 = false;
              });
            },
            decoration: InputDecoration(
              hintText: "XYZ@gmail.com",
              hintStyle: TextStyle(color: isTap2 ? Colors.blue : Colors.grey),
              // labelText: "Email",
              labelStyle: TextStyle(color: isTap2 ? Colors.blue : Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(
                Icons.email,
                color: isTap2 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          TextField(
            onTap: () {
              setState(() {
                isTap3 = true;
                isTap = true;
                isTap2 = false;
                isTap4 = false;
                isTap5 = false;
              });
            },
            decoration: InputDecoration(
              hintText: "0160000123",
              hintStyle: TextStyle(
                color: Colors.blue,
              ),
              labelText: "Phone",
              labelStyle: TextStyle(color: isTap3 ? Colors.blue : Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(
                Icons.phone,
                color: isTap3 ? Colors.blue : Colors.grey,
              ),
            ),
          ),

          TextField(
            onTap: () {
              setState(() {
                isTap4 = true;
                isTap = true;
                isTap2 = false;
                isTap3 = false;
                isTap5 = false;
              });
            },
            decoration: InputDecoration(
              hintText: "*******",
              hintStyle: TextStyle(color: isTap4 ? Colors.blue : Colors.grey),
              // labelText: "Password",
              labelStyle: TextStyle(color: isTap4 ? Colors.blue : Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(
                Icons.lock,
                color: isTap4 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          TextField(
            onTap: () {
              setState(() {
                isTap5 = true;
                isTap = false;
                isTap2 = false;
                isTap3 = false;
                isTap4 = false;
              });
            },
            decoration: InputDecoration(
              hintText: "*******",
              hintStyle: TextStyle(color: isTap5 ? Colors.blue : Colors.grey),
              // labelText: "Confirm Password",
              labelStyle: TextStyle(color: isTap5 ? Colors.blue : Colors.grey),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(
                Icons.lock,
                color: isTap5 ? Colors.blue : Colors.grey,
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 250,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "CREATE",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Login in here",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
