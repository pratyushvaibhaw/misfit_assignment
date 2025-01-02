import 'package:flutter/material.dart';
import 'package:misfit_assignment/constants/colors.dart';
import 'package:misfit_assignment/utils/utils.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomBadgeDialog extends StatelessWidget {
  final String imagePath;
  final String badgeInfo;
  final String description;
  final String buttonText;
  final VoidCallback onClose;
  final VoidCallback onButtonTap;

  const CustomBadgeDialog({
    super.key,
    required this.imagePath,
    required this.badgeInfo,
    required this.description,
    required this.buttonText,
    required this.onClose,
    required this.onButtonTap,
  });
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColor.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: onClose,
                child: Icon(
                  Icons.close,
                  color: AppColor.grey,
                  size: 32,
                ),
              ),
            ),
            8.heightBox,
            ClipOval(
              child: Image.asset(
                imagePath,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            12.heightBox,
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1.0,
                    color: AppColor.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Utils.text(str: badgeInfo),
                ),
                Expanded(
                  child: Container(
                    height: 1.0,
                    color: AppColor.grey,
                  ),
                ),
              ],
            ),
            12.heightBox,
            Text(
              description,
              style: const TextStyle(fontSize: 14.0),
              textAlign: TextAlign.center,
            ),
            20.heightBox,
            GestureDetector(
              onTap: onButtonTap,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColor.lblue),
                child: Center(
                    child: Utils.text(
                        str: buttonText, color: AppColor.white, size: 25)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
