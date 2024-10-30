import 'package:flutter/material.dart';
import 'package:google_authentication_project/auth_services.dart';
import 'package:google_authentication_project/main_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _auth=AuthServices();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(onPressed: ()async{
            await _auth.loginWithGoogle();
            Navigator.push(context, MaterialPageRoute(builder: (_)=>MainScreen()));
          }, child: Text("Google")),
        ),
      ),
    );
  }
}
