import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  late String imageUrl;
  late int total;
  late String title;

  FacilityItem(
      {required this.imageUrl, required this.total, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '$total ',
            style: purpleTextStyle.copyWith(
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: title,
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
