import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:waterdrink/themes/appcolor.dart';

class UserInfobar extends StatelessWidget {
  const UserInfobar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 5.h,
                width: 10.w,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 5.h,
                //width: 10.w,
                decoration: BoxDecoration(
                  //color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mesabo mesman',
                        style: TextStyle(
                            color: AppColor.dark,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 4,
                            fontSize: 18)),
                    Text('Administrateur',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 14)),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 5.h,
            width: 10.w,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.notifications_none_outlined,
                color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
