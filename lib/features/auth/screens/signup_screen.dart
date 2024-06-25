import 'package:amazon_clone/constants/height.dart';
import 'package:amazon_clone/constants/texts.dart';
import 'package:amazon_clone/features/auth/screens/auth_screen.dart';
import 'package:amazon_clone/features/auth/services/auth_service.dart';
import 'package:amazon_clone/reusables/elevated_button.dart';
import 'package:amazon_clone/reusables/form.dart';
import 'package:amazon_clone/reusables/form_footer.dart';
import 'package:flutter/material.dart';

import '../../../reusables/form_header.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/signup-screen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _signUpFormKey = GlobalKey<FormState>();
  final AuthService authService  = AuthService();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController= TextEditingController();
  final TextEditingController _passwordController= TextEditingController();

  
  void signUpUser(){
    authService.signUpUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text, 
      name: _userNameController.text
    );
  }

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
                const AppFormHeader(text: AppText.signUpMessage,),
                Form(
                  //Login Form
                  key: _signUpFormKey,
                  child: Column(
                    children: [
                      AppForm(controller: _userNameController, hintText: 'Username',),
                      const SizedBox(height: AppHeight.formheight,),
                      AppForm(controller: _emailController, hintText: 'Email',),
                      const SizedBox(height: AppHeight.formheight,),
                      AppForm(controller: _passwordController, hintText: 'Password',),
                      const SizedBox(height: AppHeight.formheight,),
                      AppElevatedButton(text: 'Sign Up', onTap: (){
                        if (_signUpFormKey.currentState!.validate()){
                          signUpUser();
                        }
                      }),
                      const SizedBox(height: AppHeight.formheight,),
                      FormFooter(context, accountText: "Already Have an account ? ", text: 'Login', 
                        onTap: () { 
                          Navigator.pushReplacementNamed(context, AuthScreen.routeName);
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
    _userNameController.dispose();
  }
}

