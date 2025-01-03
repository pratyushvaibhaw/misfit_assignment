import 'package:flutter/material.dart';
import 'package:misfit_assignment/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/utils.dart';
import 'custom_badge_dialog.dart';

class CustomBadge extends StatelessWidget {
  final String imagePath;
  final String description;
  final String title;
  final double imageSize;
  final String buttonText;
  final VoidCallback onButtonTap;

  const CustomBadge({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    this.imageSize = 70.0,
    required this.buttonText,
    required this.onButtonTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipOval(
          child: Image.asset(
            imagePath,
            width: imageSize,
            height: imageSize,
            fit: BoxFit.cover,
          ),
        ),
        5.heightBox,
        Utils.text(str: title, size: 18),
      ],
    ).onTap(() {
      showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel: "Dismiss",
        barrierColor: AppColor.black.withOpacity(.45), // Background dim effect
        transitionDuration: const Duration(milliseconds: 300),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: FadeTransition(
              opacity: animation,
              child: child,
            ),
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) {
          return CustomBadgeDialog(
            badgeInfo: title,
            imagePath: imagePath,
            description: description,
            buttonText: buttonText,
            onClose: () => Navigator.of(context).pop(),
            onButtonTap: onButtonTap,
          );
        },
      );
    });
  }
}
