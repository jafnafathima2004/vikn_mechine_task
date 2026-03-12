import 'package:flutter/material.dart';
import 'package:vikn_mechine_task/core/theme/appcolors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
   width: double.infinity,
    height: double.infinity,
  decoration: BoxDecoration(
    gradient: LinearGradient(colors: Appcolors.primeryGradient,begin: Alignment.topRight,end: Alignment.bottomRight),
    
  ),
),
    );
  }
}