import 'package:flutter/material.dart';
import 'package:misfit_assignment/constants/colors.dart';
import 'package:misfit_assignment/utils/utils.dart';
import 'package:velocity_x/velocity_x.dart';

class MeetupInfoTab extends StatelessWidget {
  final String meetups;
  final double width;

  const MeetupInfoTab({
    super.key,
    required this.meetups,
    required this.width,
  });

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
        mainAxisSize: MainAxisSize.min,
        children: [
          Utils.text(
              str: 'Meet-ups attended',
              size: 20,
              weight: FontWeight.w500,
              color: AppColor.grey),
          10.heightBox,
          Utils.text(str: meetups, size: 22),
        ],
      ),
    );
  }
}
