import 'package:fitime/core/const/color_constants.dart';
import 'package:flutter/material.dart';

import '../../BMI/widget/bmi_card_widget.dart';
import '../../common_widgets/app_text.dart';
import 'home_card_widget.dart';

class HomeStatistics extends StatelessWidget {
  const HomeStatistics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _createHomeTop(context),
        ],
      ),
    );
  }

  Widget _createHomeTop(BuildContext context) {
    //final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 5),
          AppText.normalText(
            "Hello!", //
            fontSize: 18,
            isBold: true,
            color: ColorConstants.textBlack,
          ),
          AppText.normalText(
            "We wish you have a nice day",
            fontSize: 15,
            color: ColorConstants.textBlack,
          ),
          const SizedBox(height: 30),
          Row(
            children: const [
              HomeCardWidget(
                backgroundImage: 'assets/homecards/reminder_img.png',
                title: "Reminder",
                mainTextColor: Color(0xffFEFFFE),
                textColor: Color(0xffFEFFFE),
                buttonColor: Color(0xff3F414E),
              ),
              SizedBox(width: 15),
              BmiCardWidget(
                backgroundImage: 'assets/homecards/bmi_img.png',
                title: "BMI",
                mainTextColor: Color(0xffFEFFFE),
                textColor: Color(0xffFEFFFE),
                buttonColor: Color(0xff3F414E),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DataWorkouts extends StatelessWidget {
  final String icon;
  final String title;
  final int count;
  final String text;

  DataWorkouts({
    required this.icon,
    required this.title,
    required this.count,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 90,
      width: screenWidth * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConstants.white,
        boxShadow: [
          BoxShadow(
            color: ColorConstants.textBlack.withOpacity(0.12),
            blurRadius: 5.0,
            spreadRadius: 1.1,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Image(image: AssetImage(icon)),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18, //in progrss
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.textBlack,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                count.toString(),
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: ColorConstants.textBlack,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ColorConstants.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
