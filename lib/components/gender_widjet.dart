import 'package:flutter/material.dart';
import 'package:tirkeme7/utils/app_colors.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.isFemale,
  });

  final IconData icon;
  final String text;
  final bool isFemale;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isFemale ? AppColors.white : AppColors.greyColor,
          size: 90,
        ),
        Text(
          text,
          style: const TextStyle(
            color: AppColors.textColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
