import 'package:flutter/material.dart';
import 'package:misfit_assignment/constants/colors.dart';
import 'package:misfit_assignment/widgets/custom_badge.dart';
import 'package:misfit_assignment/widgets/date_info_tab.dart';
import 'package:misfit_assignment/widgets/meetup_info_tab.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/utils.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    debugPrint(height.toString());
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        backgroundColor: AppColor.white,
        leading: Icon(
          Icons.close,
          size: height * .030,
          color: AppColor.grey,
        ).onTap(() {
          // add logic to navigate back
        }),
        title: Utils.text(str: "Profile", size: height * .025),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: height * .012, vertical: height * .005),
        child: SingleChildScrollView(
          child: Column(
            children: [
              20.heightBox,
              // profile-pic and name
              profileAndName(height),
              20.heightBox,
              //badges or activities
              badgesAndActivities(context),
              20.heightBox,
              //personal bio
              personalBio(
                  '"I\'m a board game fan! I love crafting wild strategies and having fun with friends. Who knew dice could create such chaos?"'),
              20.heightBox,
              //activities section
              meetAndActiveTabs(height),
              //active clubs tabs
              
            ],
          ),
        ),
      ),
    );
  }

  Row meetAndActiveTabs(double height) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MeetupInfoTab(
                  meetups: '😊 2',
                  width: height * .200,
                ),
                15.widthBox,
                DateInfoTab(
                  activeDate: '24 Jun',
                  width: height * .200,
                )
              ],
            );
  }

  Text personalBio(String str) {
    return Text(
      str,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 17,
      ),
      textAlign: TextAlign.center,
    );
  }

  SingleChildScrollView badgesAndActivities(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomBadge(
              title: "Veteran",
              imagePath: "${Utils.img}veteran.jpg",
              description:
                  "Been to over 30 meetups, knows how to vibe with the crowd, and keeps the spirit alive!",
              buttonText: 'Cool',
              onButtonTap: () {},
            ),
            20.widthBox,
            CustomBadge(
              title: "The OG",
              imagePath: "${Utils.img}og.jpg",
              description:
                  "The first-ever Misfits! They’ve been part of the community from the start, making every meetup memorable.",
              buttonText: 'Cool',
              onButtonTap: () {},
            ),
            20.widthBox,
            CustomBadge(
              title: "Inner Circle",
              imagePath: "${Utils.img}circle.jpg",
              description:
                  "This person is part of a close knit Inner circle of a misfits club.",
              buttonText: 'Cool',
              onButtonTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Column profileAndName(double height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: CircleAvatar(
            backgroundColor: AppColor.white,
            radius: height * .1,
            child: Image.asset(
              '${Utils.icn}female.png',
            ),
          ),
        ),
        10.heightBox,
        Utils.text(str: 'John Doe', size: 45),
      ],
    );
  }
}
