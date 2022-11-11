import 'package:flutter/material.dart';
import 'package:sclicingsuccess/ui/shared/theme.dart';
import 'package:sclicingsuccess/ui/widget/form.dart';

import '../widget/buttons.dart';

class ProfilEditPinPage extends StatelessWidget {
  const ProfilEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit PIN',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomFormWidget(
                  title: 'Old PIN',
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormWidget(
                  title: 'New PIN',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/profile-edit-success', (route) => false);
                  }, 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
