import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:login_ui/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  bool isobscure = true;

  GlobalKey <FormState> formkey = GlobalKey();

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
                    "https://img.freepik.com/premium-photo/colorful-background-with-purple-pink-design_1034303-219437.jpg?w=360"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 20),
              child: Text(
                "Welcome\nBack",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            
            Spacer(),

            Container(
              height: 450,
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                )
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Form(
                  key: formkey,
                  child: Column(children: [
                  
                    TextFormField(
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Email can't be empty";
                        }
                      },
                      controller: emailcontroller,
                      decoration: InputDecoration(
                  
                        prefixIcon: Icon(Icons.email),
                        hintText: "example@gmail.com",
                        
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: BorderSide(color: Colors.blue)
                        ),
                      ),  
                    ),
                  
                    SizedBox(height: 30,),
                  
                    TextFormField(
                      validator: (value) {
                        if(value!.isEmpty){
                          return "password can't be empty";
                        }
                        if(value.length<3){
                          return "invalid password";
                        }
                      },

                      controller: passcontroller,
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
                      onPressed: (){
                        if(formkey.currentState!.validate()){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),),
                          );
                        }
                      }, 
                      child: Text("Sign in",style: TextStyle(color: Colors.white),),
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
              ),
            )
            ],
        ),
      ),
    );
  }
}
