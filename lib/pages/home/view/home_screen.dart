import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slider_button/slider_button.dart';
import 'package:tech_json_hrm/pages/home/view/new_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff252633),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Image.asset(
                        "assets/images/01.png",
                        height: 40.h,
                        width: 40.w,
                      ),
                      title: Text(
                        "Good Morning",
                        style: TextStyle(
                            color: const Color(0xff878F99),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        "Huge Jackman",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const NewHomeScreen()),
                          );
                        } ,
                        child: Container(
                            padding:
                            EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.2)),
                            child: const Icon(
                              Icons.notification_important_sharp,
                              color: Colors.white,
                            )),
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  ///check in card
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                    width: double.infinity,
                    // height: 192.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/Card.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Clock In:",
                              style: TextStyle(color: Colors.white, fontSize: 12.sp),
                            ),
                            Text(
                              "00.00 AM",
                              style: TextStyle(color: Colors.white, fontSize: 12.sp),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 130.w,
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Image.asset(
                                  "assets/images/icon.png",
                                  height: 40.h,
                                  width: 35.w,
                                ),
                                title: Text(
                                  "Today",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  overflow: TextOverflow.ellipsis,
                                  "jan 20,2024",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 130.w,
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Image.asset(
                                  "assets/images/icon2.png",
                                  height: 40.h,
                                  width: 35.w,
                                ),
                                title: Text(
                                  "Position",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  overflow: TextOverflow.ellipsis,
                                  "UX Design",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        ///swipe button
                        SizedBox(
                            width: double.infinity,
                            child: SliderButton(
                              height: 52.h,
                              width: 280.w,
                              shimmer: false,
                              radius: 60.r,
                              buttonSize: 40.sp,
                              backgroundColor: Colors.white.withOpacity(0.2),
                              action: () async {},
                              label:  Center(
                                child:  Padding(
                                  padding: EdgeInsets.only(left: 20.w),
                                  child: const Text(
                                    "Swipe to Check In",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                              icon: Icon(
                                Icons.arrow_forward,
                                color: const Color(0xff3085FE),
                                size: 22.sp,
                              ),
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset("assets/images/frame.png", width: 60.w,),
                          const SizedBox(height: 5,),
                          Text("Payroll", style: TextStyle(color : Colors.white, fontSize: 10.sp, fontWeight: FontWeight.w700),)
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/images/frame1.png",  width: 60.w,),
                          const SizedBox(height: 5,),
                          Text("Payroll", style: TextStyle(color : Colors.white, fontSize: 10.sp, fontWeight: FontWeight.w700),)
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/images/frame2.png",  width: 60.w,),
                          const SizedBox(height: 5,),
                          Text("Payroll", style: TextStyle(color : Colors.white, fontSize: 10.sp, fontWeight: FontWeight.w700),)
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset("assets/images/frame4.png",  width: 60.w,),
                          const SizedBox(height: 5,),
                          Text("Payroll", style: TextStyle(color : Colors.white, fontSize: 10.sp, fontWeight: FontWeight.w700),)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.54,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)
                    )
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("My Attendance", style: TextStyle(color: const Color(0xff495270), fontSize: 14.sp, fontWeight: FontWeight.bold),),
                            //Spacer(),
                            Text("SEE ALL", style: TextStyle(color: const Color(0xff4F88FF), fontSize: 12.sp, fontWeight: FontWeight.bold),)

                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Container(
                          padding : EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: const Color(0xffE6EBF0))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding : EdgeInsets.symmetric(vertical: 6.h, horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff2A85FF).withOpacity(0.15)
                                ),
                                child: Column(
                                  children:
                                  [
                                    Text("06", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: const Color(0xff2A85FF)),),
                                    Text("THU", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                  ],
                                ),
                              ),
                              Column(
                                children:
                                [
                                  Text("Check In", style: TextStyle(fontSize: 12.sp,  color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                              Column(
                                children:
                                [
                                  Text("Check Out", style: TextStyle(fontSize: 12.sp, color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                              Column(
                                children:
                                [
                                  Text("Total Hours", style: TextStyle(fontSize: 12.sp, color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                            ],
                          ),

                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding : EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: const Color(0xffE6EBF0))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding : EdgeInsets.symmetric(vertical: 6.h, horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff2A85FF).withOpacity(0.15)
                                ),
                                child: Column(
                                  children:
                                  [
                                    Text("06", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: const Color(0xff2A85FF)),),
                                    Text("THU", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                  ],
                                ),
                              ),
                              Column(
                                children:
                                [
                                  Text("Check In", style: TextStyle(fontSize: 12.sp,  color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                              Column(
                                children:
                                [
                                  Text("Check Out", style: TextStyle(fontSize: 12.sp, color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                              Column(
                                children:
                                [
                                  Text("Total Hours", style: TextStyle(fontSize: 12.sp, color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                            ],
                          ),

                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding : EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: const Color(0xffE6EBF0))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding : EdgeInsets.symmetric(vertical: 6.h, horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff2A85FF).withOpacity(0.15)
                                ),
                                child: Column(
                                  children:
                                  [
                                    Text("06", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: const Color(0xff2A85FF)),),
                                    Text("THU", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                  ],
                                ),
                              ),
                              Column(
                                children:
                                [
                                  Text("Check In", style: TextStyle(fontSize: 12.sp,  color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                              Column(
                                children:
                                [
                                  Text("Check Out", style: TextStyle(fontSize: 12.sp, color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                              Column(
                                children:
                                [
                                  Text("Total Hours", style: TextStyle(fontSize: 12.sp, color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                            ],
                          ),

                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding : EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: const Color(0xffE6EBF0))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding : EdgeInsets.symmetric(vertical: 6.h, horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff2A85FF).withOpacity(0.15)
                                ),
                                child: Column(
                                  children:
                                  [
                                    Text("06", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: const Color(0xff2A85FF)),),
                                    Text("THU", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                  ],
                                ),
                              ),
                              Column(
                                children:
                                [
                                  Text("Check In", style: TextStyle(fontSize: 12.sp,  color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                              Column(
                                children:
                                [
                                  Text("Check Out", style: TextStyle(fontSize: 12.sp, color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                              Column(
                                children:
                                [
                                  Text("Total Hours", style: TextStyle(fontSize: 12.sp, color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                            ],
                          ),

                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding : EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: const Color(0xffE6EBF0))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding : EdgeInsets.symmetric(vertical: 6.h, horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff2A85FF).withOpacity(0.15)
                                ),
                                child: Column(
                                  children:
                                  [
                                    Text("06", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: const Color(0xff2A85FF)),),
                                    Text("THU", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                  ],
                                ),
                              ),
                              Column(
                                children:
                                [
                                  Text("Check In", style: TextStyle(fontSize: 12.sp,  color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                              Column(
                                children:
                                [
                                  Text("Check Out", style: TextStyle(fontSize: 12.sp, color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                              Column(
                                children:
                                [
                                  Text("Total Hours", style: TextStyle(fontSize: 12.sp, color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                            ],
                          ),

                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          padding : EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: const Color(0xffE6EBF0))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding : EdgeInsets.symmetric(vertical: 6.h, horizontal: 20),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xff2A85FF).withOpacity(0.15)
                                ),
                                child: Column(
                                  children:
                                  [
                                    Text("06", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: const Color(0xff2A85FF)),),
                                    Text("THU", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                  ],
                                ),
                              ),
                              Column(
                                children:
                                [
                                  Text("Check In", style: TextStyle(fontSize: 12.sp,  color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                              Column(
                                children:
                                [
                                  Text("Check Out", style: TextStyle(fontSize: 12.sp, color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                              Column(
                                children:
                                [
                                  Text("Total Hours", style: TextStyle(fontSize: 12.sp, color: const Color(0xff6B7280)),),
                                  Text("09:05 AM", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: const Color(0xff6B7280)),),
                                ],
                              ),
                            ],
                          ),

                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                  ),
                ),

              ),
            )

          ],
        ),
      ),
    );
  }
}
