import 'package:fitime/core/const/color_constants.dart';
import 'package:fitime/core/const/data_constants.dart';
import 'package:fitime/screens/workout_details_screen/page/workout_details_page.dart';
import 'package:flutter/material.dart';

import '../../../core/const/text_constants.dart';
import 'home_exercises_card.dart';
import 'home_statistics.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.homeBackgroundColor,
      height: double.infinity,
      width: double.infinity,
      child: _createHomeBody(context),
    );
  }

  Widget _createHomeBody(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        children: [
          HomeStatistics(),
          const SizedBox(height: 10),
          _createExercisesList(context),
        ],
      ),
    );
  }

////////////////////
  Widget _createExercisesList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            TextConstants.discoverWorkouts,
            style: TextStyle(
              color: ColorConstants.textBlack,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(width: 20),
              WorkoutCard(
                color: ColorConstants.cardioColor,
                workout: DataConstants.homeWorkouts[0],
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => WorkoutDetailsPage(
                      workout: DataConstants.workouts[0],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 15),
              WorkoutCard(
                  color: ColorConstants.armsColor,
                  workout: DataConstants.homeWorkouts[1],
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => WorkoutDetailsPage(
                            workout: DataConstants.workouts[2],
                          )))),
            ],
          ),
        ),
      ],
    );
  }
}
