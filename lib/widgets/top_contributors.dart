import 'package:codespire_app/widgets/big_text.dart';
import 'package:codespire_app/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopContributors extends StatefulWidget {
  const TopContributors({Key? key}) : super(key: key);

  @override
  State<TopContributors> createState() => _TopContributorsState();
}

class _TopContributorsState extends State<TopContributors> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    Matrix4 matrix = new Matrix4.identity();
    /*if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      //matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }*/

    return Transform(
      transform: matrix,
      child: Stack(
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
                boxShadow: [
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
          /*Align(
            alignment: Alignment.topLeft,
            child: BigText(
              text: (index + 1).toString(),
              size: 35.h.toInt(),
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          Positioned(
            left: 18.h,
            child: BigText(
              fontWeight: FontWeight.bold,
              text: ((index + 1) == 4 || (index + 1) == 5)
                  ? "th"
                  : ((index + 1) == 1)
                      ? "st"
                      : ((index + 1) == 2)
                          ? "nd"
                          : "rd",
            ),
          ),*/
          Positioned(
            top: 156,
            child: Container(
              margin: EdgeInsets.only(
                left: 8.h,
              ),
              width: 140.h,
              height: 40.h,
              decoration: BoxDecoration(
                color: Color.fromARGB(100, 22, 44, 33),
                //color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25.h),
                  bottomLeft: Radius.circular(25.h),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
      ),
    );
  }
}
