import 'package:flutter/material.dart';

import '../shared/theme.dart';

class CustomFormWidget extends StatelessWidget {
  final String title;
  final bool obsecureText;
  final TextEditingController? controller;

  const CustomFormWidget({
    super.key,
    required this.title,
    this.obsecureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obsecureText,
          controller: controller,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              contentPadding: const EdgeInsets.all(12)),
        ),
      ],
    );
  }
}
