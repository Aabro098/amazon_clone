import 'package:amazon_clone/constants/height.dart';
import 'package:amazon_clone/constants/images.dart';
import 'package:amazon_clone/features/styles/text_style.dart';
import 'package:flutter/material.dart';

class FormFooter extends StatelessWidget {
  final String accountText;
  final String text;
  final Null Function() onTap;
  const FormFooter(BuildContext context, {super.key, 
    required this.accountText , 
    required this.text, 
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR",style: TextStyle(fontWeight: FontWeight.w700)),
        const SizedBox(height: AppHeight.formheight),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(image: AssetImage(AppImages.google),width: 30),
            onPressed: (){}, 
            label : Text('Sign in with Google',style: AppTextStyle.normalText.copyWith(color: Colors.black))
          ),
        ),
        const SizedBox(height: AppHeight.formheight),
        TextButton(
          onPressed: onTap,
          child: Text.rich(
            TextSpan(
              text: accountText,
              style: AppTextStyle.normalText.copyWith(color: Colors.black),
              children: [
                TextSpan(
                  text: text,
                  style: const TextStyle(color: Colors.blue)
                )
              ]
            )
          )
        )
      ],
    );
  }
}