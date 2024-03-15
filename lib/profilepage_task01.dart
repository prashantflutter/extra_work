import 'package:flutter/material.dart';

class profilepage extends StatefulWidget {
  const profilepage({super.key});

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text("Profile Page"),
        actions: [
          IconButton(onPressed: () {
            Navigator.pop(context);

          }, icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              Image.asset("images/002.jpg",width: 200,height: 200),

              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10,right:10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter a Name",
                    labelText: "Name",
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10,right:10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter a Course",
                    labelText: "Course",
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10,left: 10,right:10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter a Address",
                    labelText: "Address",
                  ),
                ),
              )

            ],

          ),
        ),
      ),
    );
  }
}


