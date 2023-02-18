import 'package:codespire_app/utils/colors.dart';
import 'package:codespire_app/widgets/big_text.dart';
import 'package:codespire_app/widgets/icon_and_text.dart';
import 'package:codespire_app/widgets/small_text.dart';
import 'package:flutter/Material.dart';

class AppColumn extends StatelessWidget {
  final int starCount;
  final String text;
  final double textSize;
  AppColumn(
      {this.starCount = 5, required this.text, this.textSize = 0, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: textSize,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                  starCount,
                  (index) => Icon(
                        Icons.star,
                        color: AppColors.mainColor,
                        size: 15,
                      )),
            ),
            const SizedBox(
              width: 10,
            ),
            SmallText(
              text: "4.5",
            ),
            const SizedBox(
              width: 10,
            ),
            SmallText(
              text: "1287",
            ),
            const SizedBox(
              width: 10,
            ),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
    );
  }
}
