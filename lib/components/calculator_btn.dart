import 'package:flutter/material.dart';
import 'package:tirkeme7/utils/app_colors.dart';
import 'package:tirkeme7/utils/app_text.dart';

class CalculatorBtn extends StatelessWidget {
  const CalculatorBtn({
    super.key,
    required this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 73,
        color: AppColors.redColor,
        child: const Center(
          child: Text(
            AppText.calculator,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
