import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vikn_mechine_task/core/theme/appcolors.dart';
import 'package:vikn_mechine_task/core/theme/apptextstyle.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  String selectedvalue = "This Month";
  String selectedrole = "Customer";
  DateTime starteddate = DateTime(DateTime.now().year, DateTime.now().month, 1);
  DateTime endeddate = DateTime(
    DateTime.now().year,
    DateTime.now().month + 1,
    0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.box,
      body: Padding(
        padding: EdgeInsets.all(18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70.h),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.keyboard_backspace,
                    color: Appcolors.text,
                    size: 24,
                  ),
                ),
                Text("Filters", style: Apptextstyle.medium()),
                SizedBox(width: 160.w),
                Icon(Icons.visibility_outlined, color: Appcolors.buttoncolor),
                SizedBox(width: 30.h),
                Text(
                  "filter",
                  style: Apptextstyle.small(fontColor: Appcolors.icon),
                ),
              ],
            ),
            Divider(color: Appcolors.border),
            SizedBox(height: 18.h),
            Center(
              child: Container(
                height: 35.h,
                width: 150.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Appcolors.textform,
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    dropdownColor: Appcolors.box,
                    value: selectedvalue,
                    isExpanded: true,
                    items: ["This Month", "All Month"].map((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Center(
                          child: Text(
                            value,
                            style: Apptextstyle.small(fontSize: 15),
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newvalue) {
                      setState(() {
                        selectedvalue = newvalue!;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.h),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 38.h,
                    width: 138.w,
                    decoration: BoxDecoration(
                      color: Appcolors.container,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Icon(
                            Icons.calendar_month_outlined,
                            color: Appcolors.buttoncolor,
                          ),
                        ),
                        Center(
                          child: Text(
                            "${starteddate.day}/${starteddate.month}/${starteddate.year}",
                            style: Apptextstyle.small(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 38.h,
                    width: 138.w,
                    decoration: BoxDecoration(
                      color: Appcolors.container,
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Icon(
                            Icons.calendar_month_outlined,
                            color: Appcolors.buttoncolor,
                          ),
                        ),
                        Center(
                          child: Text(
                            "${endeddate.day}/${endeddate.month}/${endeddate.year}",
                            style: Apptextstyle.small(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 17.h),
            Divider(color: Appcolors.border),
            SizedBox(height: 35.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 43.h,
                  width: 115.w,
                  decoration: BoxDecoration(
                    color: Appcolors.pending,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Center(
                    child: Text(
                      "Pending",
                      style: Apptextstyle.small(fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  height: 43.h,
                  width: 115.w,
                  decoration: BoxDecoration(
                    color: Appcolors.container,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Center(
                    child: Text(
                      "Invoiced",
                      style: Apptextstyle.small(fontSize: 15),
                    ),
                  ),
                ),
                Container(
                  height: 43.h,
                  width: 115.w,
                  decoration: BoxDecoration(
                    color: Appcolors.container,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Center(
                    child: Text(
                      "cancelled",
                      style: Apptextstyle.small(fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.h),
            Container(
              height: 55.h,
              width: 376.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: Appcolors.textform,
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  dropdownColor: Appcolors.box,
                  value: selectedrole,
                  isExpanded: true,
                  items: ["Customer", "Admin"].map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Center(
                        child: Text(
                          value,
                          style: Apptextstyle.small(
                            fontSize: 15,
                            fontColor: Appcolors.roletext,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newvalue) {
                    setState(() {
                      selectedrole = newvalue!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 22.h),
            Divider(color: Appcolors.border),
            SizedBox(height: 20.h),
            Container(
              height: 47.h,
              width: 184.w,
              decoration: BoxDecoration(
                color: Appcolors.container,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Savad farooq", style: Apptextstyle.small(fontSize: 15)),
                  SizedBox(width: 4.w),
                  Icon(Icons.close, color: Appcolors.icon, size: 14),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
