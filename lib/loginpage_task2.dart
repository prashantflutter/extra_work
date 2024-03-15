// import 'package:flutter/material.dart';
//
// import 'Signuppage_task2.dart';
// import 'homepage_task2.dart';
//
//
// class loginpage extends StatefulWidget {
//   const loginpage({super.key});
//
//   @override
//   State<loginpage> createState() => _loginpageState();
// }
//
// class _loginpageState extends State<loginpage> {
//   bool _obscurePassword = true;
//   final _formKey = GlobalKey<FormState>();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:SingleChildScrollView(
//         child: Center(
//           child: Form(
//           key: _formKey,
//             child: Stack(
//               children: [
//                 Container(
//                   width: double.infinity,
//                   height: 350.0,
//                   child: Image.asset(
//                     "images/0001.jpg", // Replace with your background image path
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Positioned(
//                   top: 50, // Adjust the position as needed
//                   left: 50, // Adjust the position as needed
//                   child: Image.asset(
//                     "images/0002.png", // Replace with your overlay image path
//                     width: 100, // Adjust the size as needed
//                     height: 100, // Adjust the size as needed
//                   ),
//                 ),
//
//
//               Positioned(
//                 top: 180, // Adjust the position as needed
//                 left: 10,
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                         hintText: "Please Enter Your Email",
//                         labelText: "Enter Email",
//                         enabledBorder: OutlineInputBorder(
//                             borderSide:BorderSide(color: Colors.blue),
//                             borderRadius: BorderRadius.circular(20)
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.blue),
//                             borderRadius: BorderRadius.circular(20)
//                         )
//                     ),
//                     validator: (value)
//                     {
//                       if(value!.isEmpty)
//                       {
//                         return 'Please enter Email';
//                       }
//                       return null;
//                     },
//                   ),
//                 ),
//               ),
//
//             Positioned(
//                 top: 230, // Adjust the position as needed
//                 left: 10,
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
//                   child: TextFormField(
//                     obscureText: _obscurePassword, // This property determines if the password is obscured
//                     decoration: InputDecoration(
//                         hintText: "Please Enter Password",
//                         labelText: "Enter Password",
//                         suffixIcon: IconButton(
//                           icon: Icon(
//                             _obscurePassword
//                                 ? Icons.visibility
//                                 : Icons.visibility_off,
//                           ),
//                           onPressed: () {
//                             setState(() {
//                               _obscurePassword = !_obscurePassword;
//                             });
//                           },
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                             borderSide:BorderSide(color: Colors.blue),
//                             borderRadius: BorderRadius.circular(20)
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.blue),
//                             borderRadius: BorderRadius.circular(20)
//                         )
//                     ),
//                     validator: (value)
//                     {
//                       if(value!.isEmpty)
//                       {
//                         return 'Please enter Password';
//                       }
//                       return null;
//                     },
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30),
//               ElevatedButton(onPressed: (){
//                 if(_formKey.currentState!.validate())
//                 {
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
//                 }
//
//                 else
//                 {
//                   print("don't have a account");
//                 }
//
//               }, child: Text("Login")),
//
//               InkWell(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
//                   },
//                 child: Text(
//                   "Don't have an account? Sign up",
//                   style: TextStyle(color: Colors.blue),
//                 ),
//
//               ),
//
//
//               ]
//     ),
//
//         ),
//
//       ),
//       ),
//     );
//   }
// }
import 'package:extra_work/signup_page_task2.dart';
import 'package:flutter/material.dart';
import 'homepage_task01.dart';
import 'homepage_task2.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              height: 450,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    "images/0001.jpg",
                    width:450,
                    height: 450,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 85,
                    left: 85,
                    child: Image.asset(
                      "images/images_11.jpg",
                      width: 220,
                      height: 300,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Please Enter Your Email",
                        labelText: "Enter Email",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        hintText: "Please Enter Password",
                        labelText: "Enter Password",
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
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter Password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homepage()),
                          );
                        } else {
                          print("Don't have an account");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, // Set the background color
                    ),
                      child: Text("Login",style:(TextStyle(color: Colors.white)),),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Don't have an account? Sign up",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
