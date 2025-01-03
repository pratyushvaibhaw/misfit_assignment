import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:misfit_assignment/constants/colors.dart';
import 'package:misfit_assignment/utils/utils.dart';
import 'package:misfit_assignment/widgets/date_info_tab.dart';
import 'package:misfit_assignment/widgets/meetup_info_tab.dart';

class ActiveClubTab extends StatelessWidget {
  final double h;
  final String img;
  final String title;
  final String location;
  final String meetups;
  final String date;
  const ActiveClubTab(
      {super.key,
      required this.h,
      required this.img,
      required this.title,
      required this.location,
      required this.meetups,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      height: 300,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              spreadRadius: 2,
              offset: const Offset(2, 2),
              color: Colors.grey.withOpacity(0.3),
            ),
          ],
          color: AppColor.white,
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(22)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // stack with image and dice icon
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: Image.asset(
                      img,
                      height: 150,
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(22),
                              bottomRight: Radius.circular(22))),
                      child: Center(
                        child: Image.asset(
                          '${Utils.icn}dice.png',
                          height: 45,
                          width: 45,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: h * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.aBeeZee().copyWith(
                            fontSize: h * .025,
                            color: AppColor.black,
                            fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: h * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            '${Utils.icn}pin.png',
                            height: h * 0.05,
                          ),
                          Flexible(
                            child: Text(
                              'Sec 30, Gurugram',
                              style: GoogleFonts.aBeeZee().copyWith(
                                color: AppColor.grey,
                                fontSize: h * 0.018,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // meetups and active date row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MeetupInfoTab(meetups: meetups, width: h * .190, h: h),
              DateInfoTab(activeDate: date, width: h * .190, h: h)
            ],
          )
        ],
      ),
    );
  }
}
