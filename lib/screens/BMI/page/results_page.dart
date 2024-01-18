import 'package:flutter/material.dart';

import '../../../core/const/color_constants.dart';
import '../../../core/const/text_constants.dart';
import '../constants.dart';
import '../widget/reusable_card.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiresult,
      required this.getresult,
      required this.getInterpretation});
  final String bmiresult;
  final String getresult;
  final String getInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: 0,
        title: const Text(
          TextConstants.bmi,
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: ColorConstants.primaryColor,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text("Your Result", style: textcolor),
            ),
          ),
          Expanded(
              flex: 5,
              child: Reusable(
                onPress: () {},
                colour: ColorConstants.primaryColor,
                wildcard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(top: 65.0),
                      child: Text(
                        getresult,
                        style: boldcolor,
                      ),
                    )),
                    Expanded(
                        child: Text(
                      bmiresult,
                      style: result,
                    )),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        getInterpretation,
                        style: labelText,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: const Center(
                child: Text(
                  "RE-CALCULATE",
                  style: textcolor,
                ),
              ),
              color: ColorConstants.primaryColor,
              width: double.infinity,
              height: bottomContainerHeight,
              margin: EdgeInsets.only(top: 15.0),
            ),
          ),
        ],
      ),
    );
  }
}
