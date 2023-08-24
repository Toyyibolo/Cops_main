import 'package:flutter/material.dart';
import 'package:ride/utils/app_color.dart';
import 'package:ride/utils/dimention.dart';

class TextModel extends StatelessWidget {
  const TextModel({super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: getScreenHeight(24),
                color: kBLKCOLOUR),
            textAlign: TextAlign.start,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: getScreenHeight(17),
                color: kBLKCOLOUR),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
