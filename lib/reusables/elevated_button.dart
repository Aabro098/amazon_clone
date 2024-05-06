import 'package:amazon_clone/features/styles/text_style.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const AppElevatedButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        minimumSize: const Size(double.infinity, 34),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ), 
      child: Text(text , style: AppTextStyle.elevatedButtonText ,),
    );
  }
}