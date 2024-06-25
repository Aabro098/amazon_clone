import 'package:amazon_clone/constants/height.dart';
import 'package:flutter/material.dart';

class LoginScreenFooter extends StatelessWidget {
  const LoginScreenFooter(BuildContext context, {super.key});

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
            icon: const Image(image: AssetImage(tGoogleLogo),width: 30),
            onPressed: (){}, 
            label : const Text(tGoogle,style: TextStyle(fontWeight: FontWeight.w600),)
          ),
        ),
        const SizedBox(height: tFormHeight),
        TextButton(
          onPressed: (){
            Navigator.pushReplacement(
              context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()
              ),
            );
          },
          child: Text.rich(
            TextSpan(
              text: tNoAccount,
              style: Theme.of(context).textTheme.titleSmall,
              children: const  [
                TextSpan(
                  text: tSignUp,
                  style: TextStyle(color: Colors.blue)
                )
              ]
            )
          )
        )
      ],
    );
  }
}