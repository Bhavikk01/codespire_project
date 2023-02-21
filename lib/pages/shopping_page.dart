import 'package:codespire_app/utils/colors.dart';
import 'package:codespire_app/widgets/app_column.dart';
import 'package:codespire_app/widgets/big_text.dart';
import 'package:codespire_app/widgets/icon_and_text.dart';
import 'package:codespire_app/widgets/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = 242;
  bool isLoaded = true;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          const BigText(
            text: 'Shopping Page',
            size: 26,
          ),
          const SizedBox(
            height: 50,
          ),
          isLoaded
              ? SizedBox(
                  height: 320,
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: 6,
                    itemBuilder: ((context, position) {
                      return _buildPageItem(
                        position,
                      );
                    }),
                  ),
                )
              : const CircularProgressIndicator(
                  color: AppColors.mainColor,
                ),
          DotsIndicator(
            dotsCount: 6,
            position: _currPageValue,
            decorator: DotsDecorator(
              activeColor: AppColors.mainColor,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
          //popular text section
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const BigText(text: "Recommended"),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 3.0),
                  child: const BigText(
                    text: ".",
                    color: Colors.black26,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 2.0),
                  child: const SmallText(
                    text: "Food pairing",
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //List of food and images
          isLoaded
              ? ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                          bottom: 10,
                        ),
                        child: Row(
                          children: [
                            //image section
                            Container(
                              width: 112,
                              height: 112,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white38,
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO2vBQ1vOla9pPM6M0ZsYZb7OckCS21cgN_Q&usqp=CAU',
                                  ),
                                ),
                              ),
                            ),
                            //text container
                            Expanded(
                              child: Container(
                                height: 96,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const BigText(
                                        text: 'Hello',
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const SmallText(
                                          text: "With chinese characteristics"),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          IconAndText(
                                            text: "Normal",
                                            icon: Icons.circle_sharp,
                                            iconColor: AppColors.iconColor1,
                                            color: AppColors.textColor,
                                          ),
                                          IconAndText(
                                            text: "1.7km",
                                            icon: Icons.location_on,
                                            color: AppColors.textColor,
                                          ),
                                          IconAndText(
                                            text: "32min",
                                            icon: Icons.access_time_rounded,
                                            iconColor: AppColors.iconColor2,
                                            color: AppColors.textColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                )
              : const CircularProgressIndicator(
                  color: AppColors.mainColor,
                ),
        ],
      ),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currPageValue.floor()) {
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
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 242,
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO2vBQ1vOla9pPM6M0ZsYZb7OckCS21cgN_Q&usqp=CAU'),
                ),
              ),
            ),
          ), //inwards container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 132,
              margin: const EdgeInsets.only(
                left: 30,
                right: 30,
                bottom: 30,
              ),
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  color: Color(0xFFe8e8e8),
                  blurRadius: 5.0,
                  offset: Offset(0, 5),
                ),
                BoxShadow(
                  color: Colors.white,
                  //blurRadius: 5.0,
                  offset: Offset(-5, 0),
                ),
                BoxShadow(
                  color: Colors.white,
                  //blurRadius: 5.0,
                  offset: Offset(5, 0),
                ),
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Container(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: const AppColumn(
                  starCount: 5,
                  text: 'Chinese Side',
                ),
              ),
            ),
          ), //outwards container
        ],
      ),
    );
  }
}
