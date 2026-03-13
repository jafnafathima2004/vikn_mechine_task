import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vikn_mechine_task/controllers/auth_controller.dart';
import 'package:vikn_mechine_task/core/assets/assetreasource.dart';
import 'package:vikn_mechine_task/core/theme/appcolors.dart';
import 'package:vikn_mechine_task/core/theme/apptextstyle.dart';
import 'package:vikn_mechine_task/screens/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool ishidden = true;
  final formkey = GlobalKey<FormState>();
  final AuthController authController = AuthController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formkey,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: Appcolors.primeryGradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ),
          ),

          child: Padding(
            padding: const EdgeInsets.all(48),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 180.h),
                  Center(
                    child: Text(
                      "Login",
                      style: Apptextstyle.medium(fontSize: 21),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Login to your vikn account",
                      style: Apptextstyle.small(
                        fontColor: Appcolors.secondarytext,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                  Container(
                    decoration: BoxDecoration(
                      color: Appcolors.textform,
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(color: Appcolors.border),
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: usernamecontroller,
                          decoration: InputDecoration(
                            hintText: "Enter username",
                            border: InputBorder.none,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                Assetreasource.usericon,
                                height: 14.h,
                                width: 14.w,
                                fit: BoxFit.fill,
                              ),
                            ),
                            contentPadding: EdgeInsets.all(12.w),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "required";
                            }
                            return null;
                          },
                        ),

                        Divider(color: Appcolors.border),

                        TextFormField(
                          controller: passwordcontroller,
                          obscureText: ishidden,
                          decoration: InputDecoration(
                            hintText: "Enter password",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(12.w),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                Assetreasource.keyicon,
                                height: 14.h,
                                width: 14.w,
                                fit: BoxFit.contain,
                              ),
                            ),
                            suffixIcon: IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                setState(() {
                                  ishidden = !ishidden;
                                });
                              },
                              icon: Icon(
                                ishidden
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility,
                                color: Appcolors.icon,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "required";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 29.h),
                  Center(
                    child: Text(
                      "Forgotten Password?",
                      style: Apptextstyle.small(
                        fontColor: Appcolors.icon,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: ElevatedButton(
                      onPressed: isLoading
                          ? null
                          : () async {
                              if (formkey.currentState!.validate()) {
                                setState(() {
                                  isLoading = true;
                                });

                                try {
                                  print(
                                    "Login button pressed, inputs validated",
                                  );

                                  final user = await authController.login(
                                    usernamecontroller.text.trim(),
                                    passwordcontroller.text.trim(),
                                  );

                                  print("Login controller returned: $user");

                                  if (user != null) {
                                    print("Navigating to Dashboard");

                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const DashboardScreen(),
                                      ),
                                    );
                                  } else {
                                    print("Login failed");
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text("Login Failed"),
                                      ),
                                    );
                                  }
                                } catch (e) {
                                  print("Login error: $e");
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("An error occurred: $e"),
                                    ),
                                  );
                                } finally {
                                  setState(() {
                                    isLoading = false;
                                  });
                                }
                              }
                            },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Appcolors.buttoncolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.r),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sign in",
                            style: Apptextstyle.small(fontSize: 16),
                          ),
                          SizedBox(width: 4.w),
                          Icon(Icons.arrow_forward, color: Appcolors.text),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 90.h),
                  Center(
                    child: Text(
                      "Don't have an account?",
                      style: Apptextstyle.small(fontSize: 15),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Signup now!",
                      style: Apptextstyle.medium(fontColor: Appcolors.icon),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
