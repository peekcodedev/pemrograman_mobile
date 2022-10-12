import 'package:flutter/material.dart';
import 'package:sclicingsuccess/ui/shared/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double widht;
  final double height;
  final VoidCallback? OnPressed;

  const CustomFilledButton({
    Key? key,
    required this.title,
    this.widht = double.infinity,
    this.height = 50,
    this.OnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        onPressed: OnPressed,
        style: TextButton.styleFrom(
          backgroundColor: purpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
