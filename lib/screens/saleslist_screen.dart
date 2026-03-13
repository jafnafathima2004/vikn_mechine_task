import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vikn_mechine_task/core/theme/appcolors.dart';
import 'package:vikn_mechine_task/core/theme/apptextstyle.dart';

class SaleslistScreen extends StatefulWidget {
  const SaleslistScreen({super.key});

  @override
  State<SaleslistScreen> createState() => _SaleslistScreenState();
}

class _SaleslistScreenState extends State<SaleslistScreen> {
TextEditingController searchcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.box,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 72.h,),
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
                Text("Invoices", style: Apptextstyle.medium()),
                SizedBox(height: 18.h,)
            ],
          ),
          Divider(color: Appcolors.border,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[ SizedBox(
              height: 50.h,
              width:236.w ,
              child: TextFormField(
               controller: searchcontroller,
               decoration: InputDecoration(
                fillColor: Appcolors.textform,
                suffixIcon: Icon(Icons.search,color: Appcolors.secondarytext,size: 20,),
                hintText: "search",hintStyle: Apptextstyle.small(fontSize: 15,
                fontColor: Appcolors.secondarytext),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r)
                )
               ),
              ),
            ),
            Container(
              height:50.h ,
              width: 143.w,
              decoration: BoxDecoration(
                color: Appcolors.container,
                borderRadius: BorderRadius.circular(12.r)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.filter_list,color: Appcolors.buttoncolor,size: 18,),
                  Text("Add filters",style: Apptextstyle.small(fontSize: 15),)
                ],
              ),
            ),
            ]
          ),
          Divider(color: Appcolors.border,),
        ],
      ),
    );
  }
}