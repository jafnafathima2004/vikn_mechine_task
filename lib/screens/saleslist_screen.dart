import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vikn_mechine_task/controllers/sales_controller.dart';
import 'package:vikn_mechine_task/core/theme/appcolors.dart';
import 'package:vikn_mechine_task/core/theme/apptextstyle.dart';
import 'package:vikn_mechine_task/screens/filter_screen.dart';

class SaleslistScreen extends StatefulWidget {
  const SaleslistScreen({super.key});

  @override
  State<SaleslistScreen> createState() => _SaleslistScreenState();
}

class _SaleslistScreenState extends State<SaleslistScreen> {
TextEditingController searchcontroller=TextEditingController();
final SalesController controller = SalesController();
@override
void initState() {
  super.initState();
  loadSales();
}

void loadSales() async {
  await controller.getSalesList();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.box,
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
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
                  fillColor: Appcolors.border,
                  prefixIcon: Icon(Icons.search,color: Appcolors.secondarytext,size: 20,),
                  hintText: "search",hintStyle: Apptextstyle.small(fontSize: 15,
                  fontColor: Appcolors.secondarytext),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    borderSide: BorderSide(
                      color: Appcolors.border
                    )
                  )
                 ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FilterScreen()));
                },
                child: Container(
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
                      Center(child: Icon(Icons.filter_list,color: Appcolors.buttoncolor,size: 18,)),
                      Center(child: Text("Add filters",style: Apptextstyle.small(fontSize: 15),))
                    ],
                  ),
                ),
              ),
              ]
            ),
            Divider(color: Appcolors.border,),
          ],
        ),
      ),
    );
  }
}