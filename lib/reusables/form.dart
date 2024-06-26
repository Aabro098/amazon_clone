import 'package:flutter/material.dart';

class AppForm extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const AppForm({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.orange
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.black
          ),
        ),
      ),
      validator: (value){
        if(value == null || value.isEmpty){
          return 'Enter your $hintText';
        }
        return null;
      },
    );
  }
}
