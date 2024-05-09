import 'package:amazon_clone/constants/height.dart';
import 'package:amazon_clone/constants/images.dart';
import 'package:flutter/material.dart';

class FormFooter extends StatelessWidget {
  final String text;
  const FormFooter(BuildContext context, {super.key, required this.text});

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
            label : const Text('Sign in with',style: TextStyle(fontWeight: FontWeight.w600),)
          ),
        ),
        const SizedBox(height: AppHeight.formheight),
        TextButton(
          onPressed: (){},
          child: Text.rich(
            TextSpan(
              text: "Don't Have an account ?",
              style: Theme.of(context).textTheme.titleSmall,
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