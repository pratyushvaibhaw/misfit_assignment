import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants/colors.dart';
import '../utils/utils.dart';

class DateInfoTab extends StatelessWidget {
  final String activeDate;
  final double width;
  const DateInfoTab({super.key, required this.activeDate, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColor.grey.withOpacity(.09),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Utils.text(
              str: 'Active since',
              size: 20,
              weight: FontWeight.w500,
              color: AppColor.grey),
          10.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                '${Utils.img}calendar.png',
                height: 28,
              ),
              5.widthBox,
              Utils.text(str: activeDate, size: 22),
            ],
          ),
        ],
      ),
    );
  }
}
