import 'package:flutter/material.dart';

import '../../common_widgets/app_buttons.dart';
import '../../common_widgets/app_text.dart';
import '../page/input_page.dart';

class BmiCardWidget extends StatelessWidget {
  final String backgroundImage;

  final String title;

  final Color mainTextColor;
  final Color textColor;
  final Color buttonColor;

  const BmiCardWidget({
    Key? key,
    required this.backgroundImage,
    required this.title,
    required this.mainTextColor,
    required this.textColor,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClicked(context),
      child: Container(
        width: 158,
        height: 230,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText.normalText(
                  title,
                  fontSize: 14,
                  isBold: true,
                  color: mainTextColor,
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                AppButtons.mainButton(
                  "Click",
                  textColor: buttonColor,
                  buttonColor: textColor,
                  onPressed: () => onClicked(context),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void onClicked(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BMIcalculator(),
        //,
      ),
    );
  }
}
