import 'package:codespire_app/app/utils/big_text.dart';
import 'package:codespire_app/app/utils/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopContributors extends StatefulWidget {
  const TopContributors({Key? key}) : super(key: key);

  @override
  State<TopContributors> createState() => _TopContributorsState();
}

class _TopContributorsState extends State<TopContributors> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.amber,
      height: 180.h,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 8.h),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: ((context, position) {
          return _buildPageItem(
            position,
          );
        }),
      ),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 140.h,
            height: 170.h,
            margin: EdgeInsets.only(
              left: 8.h,
              right: 4.h,
              top: 3.h,
            ),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(0, 2),
                  blurRadius: 6,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: BorderRadius.circular(25.h),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO2vBQ1vOla9pPM6M0ZsYZb7OckCS21cgN_Q&usqp=CAU"),
              ),
            ),
          ),
        ),
        Positioned(
          top: 156,
          child: Container(
            margin: EdgeInsets.only(
              left: 8.h,
            ),
            width: 140.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: const Color.fromARGB(100, 22, 44, 33),
              //color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25.h),
                bottomLeft: Radius.circular(25.h),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                BigText(
                  text: "Robert Pattinson",
                  color: Colors.white,
                ),
                SmallText(
                  text: "Credits: 5000",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
