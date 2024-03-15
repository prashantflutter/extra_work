
import 'package:extra_work/Pages/signupPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            margin: EdgeInsets.symmetric(vertical: 23),
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/images_11.jpg'),fit:BoxFit.cover,)
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
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
              onPressed: (){}, child: Text('Login',style: TextStyle(color: Colors.white),)),
          Center(
            child: InkWell(
              onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: RichText(
                    text: TextSpan(text: 'don\'t have an account?',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal ),
                    children: [
                        TextSpan(text: ' Signup',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold ))
                    ])),
              ),
            ),
          )
        ],
      ),
    );
  }
}
