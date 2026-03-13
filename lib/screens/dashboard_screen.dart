import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vikn_mechine_task/core/assets/assetreasource.dart';
import 'package:vikn_mechine_task/core/theme/appcolors.dart';
import 'package:vikn_mechine_task/core/theme/apptextstyle.dart';
import 'package:vikn_mechine_task/screens/profile_screen.dart';
import 'package:vikn_mechine_task/screens/saleslist_screen.dart';
import 'package:vikn_mechine_task/screens/widget/revenue_chart.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.box,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              Row(
                children: [
                  Image.asset(Assetreasource.logo, height: 29, width: 29),
                  SizedBox(width: 10.w),
                  Text("CabZing", style: Apptextstyle.large(fontSize: 22)),
                  SizedBox(width: 150.w),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      backgroundColor: Appcolors.circle,
                      backgroundImage: AssetImage(Assetreasource.profile),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Container(
                height: 394.h,
                width: 382.w,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Appcolors.opacitycontainer,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text("Revenue", style: TextStyle(color: Colors.white)),
                    SizedBox(height: 20),
                    RevenueChart(),
                  ],
                ),
              ),
              SizedBox(height: 21.h),
              Stack(
                children: [
                  Container(
                    height: 129.h,
                    width: 373.w,
                    decoration: BoxDecoration(
                      color: Appcolors.opacitycontainer,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  Positioned(
                    top: 20.h,
                    left: 16.w,
                    child: Container(
                      height: 92.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: Appcolors.text,
                        borderRadius: BorderRadius.circular(30.r),
                      ),

                      child: Center(
                        child: SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: Image.asset(
                            Assetreasource.booking,
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
                          "Bookings",
                          style: Apptextstyle.small(fontSize: 18),
                        ),
                        Text(
                          "123",
                          style: Apptextstyle.small(fontColor: Appcolors.text),
                        ),
                        Text(
                          "Reserved",
                          style: Apptextstyle.small(
                            fontColor: Appcolors.secondarytext,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 30.h,
                    right: 10,
                    child: Container(
                      height: 75.h,
                      width: 75.w,
                      decoration: BoxDecoration(
                        color: Appcolors.saleslist,
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 14,
                        color: Appcolors.arrow,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9.h),
              Stack(
                children: [
                  Container(
                    height: 129.h,
                    width: 373.w,
                    decoration: BoxDecoration(
                      color: Appcolors.opacitycontainer,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  Positioned(
                    top: 20.h,
                    left: 16.w,
                    child: Container(
                      height: 92.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: Appcolors.mailtext,
                        borderRadius: BorderRadius.circular(30.r),
                      ),

                      child: Center(
                        child: SizedBox(
                           height: 20.h,
                          width: 20.w,
                          child: Image.asset(
                            Assetreasource.invoices,
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
                          "Invoices",
                          style: Apptextstyle.small(
                            fontSize: 18,
                            fontColor: Appcolors.mailtext,
                          ),
                        ),
                        Text(
                          "10,232.00",
                          style: Apptextstyle.small(fontColor: Appcolors.text),
                        ),
                        Text(
                          "Rupees",
                          style: Apptextstyle.small(
                            fontColor: Appcolors.secondarytext,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 30.h,
                    right: 10,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SaleslistScreen()));
                      },
                      child: Container(
                        height: 75.h,
                        width: 75.w,
                        decoration: BoxDecoration(
                          color: Appcolors.saleslist,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          size: 14,
                          color: Appcolors.arrow,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
