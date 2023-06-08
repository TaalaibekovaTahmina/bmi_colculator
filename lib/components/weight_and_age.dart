import 'package:flutter/material.dart';
import 'package:tirkeme7/utils/app_colors.dart';

class WeightAndAge extends StatelessWidget {
  const WeightAndAge(
      {super.key,
      required this.value,
      required this.text,
      required this.remove,
      required this.add});

  final String text;
  final int value;
  final void Function(int) remove;
  final void Function(int) add;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: AppColors.textColor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value.toString(),
          style: const TextStyle(
            color: AppColors.white,
            fontSize: 40,
            fontWeight: FontWeight.w800,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RemuveAddButton(
              onPressed: () => remove(value - 1),
              iconData: Icons.remove,
            ),
            RemuveAddButton(
              onPressed: () => add(value + 1),
              iconData: Icons.add,
            ),
          ],
        ),
      ],
    );
  }
}

class RemuveAddButton extends StatelessWidget {
  const RemuveAddButton({
    super.key,
    required this.iconData,
    required this.onPressed,
  });
  final IconData iconData;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.btnColor,
      foregroundColor: AppColors.white,
      onPressed: onPressed,
      child: Icon(
        iconData,
        size: 40,
      ),
    );
  }
}
