import 'package:flutter/material.dart';
import 'package:vikn_mechine_task/core/assets/assetreasource.dart';
import 'package:vikn_mechine_task/core/theme/appcolors.dart';
import 'package:vikn_mechine_task/core/theme/apptextstyle.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
   bool ishidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: Appcolors.primeryGradient,
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Center(
                child: Text("Login", style: Apptextstyle.medium(fontSize: 21)),
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
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Appcolors.textform,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Appcolors.border),
                ),
                child: Column(
                  children: [
                    TextFormField(
                      controller: usernamecontroller,
                      decoration:  InputDecoration(
                        hintText: "Enter username",
                        border: InputBorder.none,
                        prefixIcon: Image.asset(Assetreasource.usericon,height: 24,width: 24,fit: BoxFit.contain,),
                        contentPadding: EdgeInsets.all(12),
                      ),
                    ),
          
                   Divider(color: Appcolors.border,),
          
                    TextFormField(
                      controller: passwordcontroller,
                      obscureText: ishidden,
                      decoration:  InputDecoration(
                        hintText: "Enter password",
                        border: InputBorder.none,
                       // contentPadding: EdgeInsets.all(12),
                        prefixIcon:Image.asset(Assetreasource.keyicon,height: 24,width: 24,fit: BoxFit.contain,),
                        suffixIcon:IconButton(onPressed: (){
                          setState(() {
                            ishidden=!ishidden;
                          });
                        }, icon:Icon(ishidden?Icons.visibility_off_outlined:Icons.visibility,color: Appcolors.icon,))
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Center(child: Text("Forgotten Password?",style: Apptextstyle.small(fontColor: Appcolors.icon,fontSize: 16),)),
              Center(
                child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolors.buttoncolor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(10))
                ),
                 child:Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text("Sign in",style: Apptextstyle.small(fontSize: 16),),
                    SizedBox(width: 4,),
                    Icon(Icons.arrow_forward,color: Appcolors.text,)
                  ],
                )
                           
                 ),
              ),
              SizedBox(height: 50,),
              Center(child: Text("Don't have an account?",style: Apptextstyle.small(fontSize: 15),)),
              Center(child: Text("Signup now!",style: Apptextstyle.medium(fontColor: Appcolors.icon),))
            ],
          ),
        ),
      ),
    );
  }
}
