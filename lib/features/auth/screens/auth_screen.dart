import 'package:amazon_clone/constants/height.dart';
import 'package:amazon_clone/constants/images.dart';
import 'package:amazon_clone/features/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(AppImages.logo),
                const SizedBox(
                  height:AppHeight.sizedBoxHeight
                ),
                Text('Welcome to the Login Screen' , style: AppTextStyle.mainTitle,),
              ],
            ),
          ),
        ),
      )
    );
  }
}