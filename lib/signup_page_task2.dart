//SignUp Page


import 'package:extra_work/homepage_task2.dart';
import 'package:extra_work/loginpage_task2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage>{

  bool _obscurePassword = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 15),
              child: Text(
                "Sign Up",
                style: TextStyle(color: Colors.blue, fontSize: 35),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 15),
              child: Text(
                "Get Your Daily Dairy Product Easily",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Please enter First Name",
                        labelText: "First Name",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10), // Add some spacing between the fields
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Please enter Last Name",
                        labelText: "Last Name",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5, left: 15,right: 15),
              child:  TextFormField(
                decoration: InputDecoration(
                  hintText: "Please enter Email",
                  labelText: "Email",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5,left: 15,right: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Please enter Mobile No",
                  labelText: "Mobile",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5,left: 15,right: 15),
              child: TextFormField(
                obscureText: _obscurePassword, // This property determines if the password is obscured
                decoration: InputDecoration(
                  hintText: "Please enter Password",
                  labelText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 5,left: 15,right: 15),
              child: TextFormField(
                obscureText: _obscurePassword, // This property determines if the password is obscured
                decoration: InputDecoration(
                  hintText: "Please enter Confirm Password",
                  labelText: "Confirm Password",
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),

            SizedBox(height: 40),
            Center(
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homepage()));
                    },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Set the background color
                ),
                child: Text("Register",style:(TextStyle(color: Colors.white)),),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Already have an account? log in  ",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
