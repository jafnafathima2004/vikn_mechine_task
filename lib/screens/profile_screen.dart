import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vikn_mechine_task/controllers/profile_controller.dart';
import 'package:vikn_mechine_task/core/assets/assetreasource.dart';
import 'package:vikn_mechine_task/core/theme/appcolors.dart';
import 'package:vikn_mechine_task/core/theme/apptextstyle.dart';
import 'package:vikn_mechine_task/screens/login_screen.dart';
import 'package:vikn_mechine_task/shared_pref_helper/shared_prference.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileController controller = ProfileController();

  @override
  void initState() {
    super.initState();
    controller.fetchProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.box,
      body: Padding(
        padding: EdgeInsetsGeometry.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Appcolors.text),
            ),
            SizedBox(height: 30.h),
            Container(
              padding: EdgeInsets.all(16),
              height: 352.h,
              width: 382.w,
              decoration: BoxDecoration(
                color: Appcolors.background,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: Appcolors.box,
                          borderRadius: BorderRadius.circular(150.r),
                        ),
                        child: Image.asset(
                          Assetreasource.profile,
                          fit: BoxFit.contain,
                          width: 55.86.w,
                          height: 73.88.h,
                        ),
                      ),

                      Column(
                        children: [
                          Text(
                            "David Arnold",
                            style: Apptextstyle.large(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "david012@cabzing",
                            style: Apptextstyle.small(
                              fontColor: Appcolors.mailtext,
                            ),
                          ),
                        ],
                      ),

                      Image.asset(
                        Assetreasource.edit,
                        height: 24.h,
                        width: 24.w,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 107.h,
                            width: 170.w,
                            decoration: BoxDecoration(
                              color: Appcolors.box,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          ),
                          Positioned(
                            top: 15.h,
                            left: 16.w,
                            child: Container(
                              height: 78.h,
                              width: 38.w,
                              decoration: BoxDecoration(
                                color: Appcolors.cards,
                                borderRadius: BorderRadius.circular(30.r),
                              ),

                              child: Center(
                                child: SizedBox(
                                  height: 20.h,
                                  width: 20.w,
                                  child: Image.asset(
                                    Assetreasource.stars,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 15.h,
                            left: 65.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "4.3★",
                                  style: Apptextstyle.small(fontSize: 18),
                                ),
                                Text(
                                  "2,211",
                                  style: Apptextstyle.small(
                                    fontColor: Appcolors.notext,
                                  ),
                                ),
                                Text(
                                  "rides",
                                  style: Apptextstyle.small(
                                    fontColor: Appcolors.mailtext,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 107.h,
                            width: 170.w,
                            decoration: BoxDecoration(
                              color: Appcolors.box,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                          ),
                          Positioned(
                            top: 15.h,
                            left: 16.w,
                            child: Container(
                              height: 78.h,
                              width: 38.w,
                              decoration: BoxDecoration(
                                color: Appcolors.cards,
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: Center(
                                child: SizedBox(
                                  height: 20.h,
                                  width: 20.w,
                                  child: Image.asset(
                                    Assetreasource.verifytick,

                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 30.h,
                            left: 65.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "KYC",
                                      style: Apptextstyle.small(fontSize: 18),
                                    ),
                                    Icon(
                                      Icons.check_circle_outline,
                                      size: 10,
                                      color: Appcolors.text,
                                    ),
                                  ],
                                ),

                                Text(
                                  "verified",
                                  style: Apptextstyle.small(
                                    fontColor: Appcolors.mailtext,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 19.h),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Appcolors.box,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(30.r),
                      ),
                    ),
                    onPressed: () async {
                      await SharedPrefHelper.logout();
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                        (route) => false,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          color: Appcolors.logout,
                          size: 24,
                        ),
                        Text(
                          "Logout",
                          style: Apptextstyle.small(
                            fontColor: Appcolors.logout,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35.h),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.live_help_outlined,
                      size: 21,
                      color: Appcolors.mailtext,
                    ),
                    title: Text(
                      "help",
                      style: Apptextstyle.small(
                        fontSize: 15,
                        fontColor: Appcolors.condition,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Appcolors.text,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.question_mark_outlined,
                      size: 21,
                      color: Appcolors.mailtext,
                    ),
                    title: Text(
                      "FAQ",
                      style: Apptextstyle.small(
                        fontSize: 15,
                        fontColor: Appcolors.condition,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Appcolors.text,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person_add_alt,
                      size: 21,
                      color: Appcolors.mailtext,
                    ),
                    title: Text(
                      "Invite friends",
                      style: Apptextstyle.small(
                        fontSize: 15,
                        fontColor: Appcolors.condition,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Appcolors.text,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.description_outlined,
                      size: 21,
                      color: Appcolors.mailtext,
                    ),
                    title: Text(
                      "Terms of Service",
                      style: Apptextstyle.small(
                        fontSize: 15,
                        fontColor: Appcolors.condition,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Appcolors.text,
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.privacy_tip_outlined,
                      size: 21,
                      color: Appcolors.mailtext,
                    ),
                    title: Text(
                      "Privacy Policy",
                      style: Apptextstyle.small(
                        fontSize: 15,
                        fontColor: Appcolors.condition,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14,
                      color: Appcolors.text,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
