import 'package:extra_work/Pages/loginPage.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();
  bool isVisible = true;
  bool isVisible2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.symmetric(vertical: 23),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/images_delivery1.jpeg'),fit:BoxFit.cover,)
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Enter Email',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: TextFormField(
              controller: passwordController,
              obscureText: isVisible,
              decoration: InputDecoration(
                  hintText: 'Enter Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  suffixIcon: IconButton(onPressed: (){
                    isVisible = !isVisible;
                    setState(() {});

                  }, icon: Icon(isVisible?Icons.visibility_off:Icons.visibility))
              ),


            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: TextFormField(
              controller: cPasswordController,
              obscureText: isVisible2,
              decoration: InputDecoration(
                  hintText: 'Enter Confirm Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  suffixIcon: IconButton(onPressed: (){
                    isVisible2 = !isVisible2;
                    setState(() {});

                  }, icon: Icon(isVisible2?Icons.visibility_off:Icons.visibility))
              ),


            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));}, child: Text('Submit',style: TextStyle(color: Colors.white),)),
          Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: RichText(
                    text: TextSpan(text: 'already have an account',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal ),
                        children: [
                          TextSpan(text: ' Login',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold ))
                        ])),
              ),
            ),
          )
        ],
      ),
    );
  }
}
