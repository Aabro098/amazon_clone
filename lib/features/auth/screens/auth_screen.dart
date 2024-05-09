import 'package:amazon_clone/constants/height.dart';
import 'package:amazon_clone/constants/texts.dart';
import 'package:amazon_clone/features/auth/screens/signup_screen.dart';
import 'package:amazon_clone/features/styles/text_style.dart';
import 'package:amazon_clone/reusables/elevated_button.dart';
import 'package:amazon_clone/reusables/form.dart';
import 'package:amazon_clone/reusables/form_footer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../reusables/form_header.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController= TextEditingController();
  final TextEditingController _passwordController= TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const AppFormHeader(text: AppText.loginMessage,),
                Form(
                  //Login Form
                  key: _signInFormKey,
                  child: Column(
                    children: [
                      AppForm(controller: _emailController, hintText: 'Email',),
                      const SizedBox(height: AppHeight.formheight,),
                      AppForm(controller: _passwordController, hintText: 'Password',),
                      const SizedBox(height: AppHeight.formheight,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(onPressed: (){}, child: Text(
                          'Forgot Password ?' , style: AppTextStyle.normalText.copyWith(color: Colors.blue) ,
                        )),
                      ),
                      const SizedBox(height: AppHeight.formheight,),
                      AppElevatedButton(text: 'Login', onTap: (){}),
                      const SizedBox(height: AppHeight.formheight,),
                      FormFooter(context, accountText: "Don't Have an account ? ", text: 'Sign Up',
                        onTap: () {
                          Navigator.pushReplacementNamed(context, SignUpScreen.routeName);
                        },
                      )
                    ],
                  )
                )
              ],
            ),
          ),
        ),
      )
    );
  }
  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
}

