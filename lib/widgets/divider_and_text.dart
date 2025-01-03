import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../utils/utils.dart';

class DividerAndText extends StatelessWidget {
  final String txt;
  const DividerAndText({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1.0,
            color: AppColor.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Utils.text(str: txt, size: 25),
        ),
        Expanded(
          child: Container(
            height: 1.0,
            color: AppColor.grey,
          ),
        ),
      ],
    );
  }
}
