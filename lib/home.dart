import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://images.unsplash.com/photo-1724926201899-40530ae44ee4?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
                )),
            
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Thank you for watching", 
              style: TextStyle(color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),),
              
            ],
          ),
        ),
      ),
    );
  }
}