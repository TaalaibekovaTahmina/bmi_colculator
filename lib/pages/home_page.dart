import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tirkeme7/components/aler_dialog.dart';
import 'package:tirkeme7/components/calculator_btn.dart';
import 'package:tirkeme7/components/gender_widjet.dart';
import 'package:tirkeme7/components/slaider_widget.dart';
import 'package:tirkeme7/components/status_card.dart';
import 'package:tirkeme7/components/weight_and_age.dart';
import 'package:tirkeme7/utils/app_text.dart';

import '../utils/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 180;
  bool isFemale = false;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(AppText.appBarText),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    widget: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = false;
                        });
                      },
                      child: GenderWidget(
                        icon: Icons.male,
                        text: AppText.male,
                        isFemale: !isFemale,
                      ),
                    ),
                  ),
                  StatusCard(
                    widget: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = true;
                        });
                      },
                      child: GenderWidget(
                        icon: Icons.female,
                        text: AppText.female,
                        isFemale: isFemale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            StatusCard(
              widget: SliderWidget(
                currentSliderValue: height,
                onChanged: (double value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    widget: WeightAndAge(
                      text: AppText.weight,
                      value: weight,
                      remove: (maani) {
                        setState(() {
                          weight = maani;
                        });
                      },
                      add: (maani) {
                        setState(() {
                          weight = maani;
                        });
                      },
                    ),
                  ),
                  StatusCard(
                    widget: WeightAndAge(
                      text: AppText.age,
                      value: age,
                      remove: (maani) {
                        setState(() {
                          age = maani;
                        });
                      },
                      add: (maani) {
                        setState(() {
                          age = maani;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculatorBtn(
        onTap: () {
          final result = weight / pow(height / 100, 2);
          ;
          if (result < 18.5) {
            showMyDialog(
              context: context,
              result: result,
              text: AppText.text1,
            );
          } else if (result >= 18.5 && result <= 24.9) {
            showMyDialog(
              context: context,
              result: result,
              text: AppText.text2,
            );
          } else if (result >= 24.9) {
            showMyDialog(
              context: context,
              result: result,
              text: AppText.text3,
            );
          } else {
            showMyDialog(
              context: context,
              result: result,
              text: AppText.text4,
            );
          }
        },
      ),
    );
  }
}
