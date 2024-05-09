import 'package:flutter/material.dart';

import 'package:amazon_clone/constants/height.dart';
import 'package:amazon_clone/constants/images.dart';
import 'package:amazon_clone/features/styles/text_style.dart';
import 'package:flutter/widgets.dart';

class AppFormHeader extends StatelessWidget {
  final String text;
  const AppFormHeader({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        //header
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(AppImages.logo, 
              width:200,
              height: 100,
            ),
          ),
          const SizedBox(
            height:AppHeight.sizedBoxHeight
          ),
          Text(text , 
            style: AppTextStyle.mainTitle,textAlign: TextAlign.center
          ),
          const SizedBox(
            height:AppHeight.sizedBoxHeight
          ),
        ],
      ),
    );
  }
}
