import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool isobscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://img.freepik.com/premium-photo/pink-purple-colored-liquid-with-pink-purple-background_1034303-438946.jpg?w=360"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
              child: Text(
                "Welcome\nBack",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
            
            Spacer(),

            Container(
              height: 500,
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(children: [

                  TextFormField(
                    decoration: InputDecoration(
                
                      prefixIcon: Icon(Icons.email),
                      hintText: "Enter your valid Email",
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.blue)
                      ),
                    ),  
                  ),

                  SizedBox(height: 30,),

                  TextFormField(
                    obscureText: isobscure,
                    decoration: InputDecoration(
                
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: MaterialButton(onPressed: (){
                        setState(() {
                          isobscure = !isobscure;
                        });
                      }, child: Icon(Icons.visibility),),
                      hintText: "Enter your Password",
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.blue)
                      ),
                    ),  
                  ),

                  SizedBox(height: 20,),

                  Text("Forgot your password?"),

                  Spacer(),

                  MaterialButton(
                    minWidth: 350,
                    height: 40,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                    color: Colors.blueAccent,
                    onPressed: (){}, child: Text("Sign in",style: TextStyle(color: Colors.white),),
                    ),

                    
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: RichText(text: TextSpan(
                        text: "Don't have account?",style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(text: "Sign Up",style: TextStyle(color: Colors.blue))
                        ]
                      )),
                    )
                ],),
              ),
            )
            ],
        ),
      ),
    );
  }
}
