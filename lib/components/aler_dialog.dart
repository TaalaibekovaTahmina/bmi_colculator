import 'package:flutter/material.dart';
import 'package:tirkeme7/utils/app_colors.dart';
import 'package:tirkeme7/utils/app_text.dart';

Future<void> showMyDialog({
  required BuildContext context,
  required String text,
  required double result,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.background,
        title: const Text(
          AppText.result,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: AppColors.greenColor,
          ),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                '${result.toInt()}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 48,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(AppText.countAgain),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
