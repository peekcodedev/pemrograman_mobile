import 'package:flutter/material.dart';
import 'package:sclicingsuccess/ui/shared/theme.dart';
import 'package:sclicingsuccess/ui/widget/form.dart';
import 'package:sclicingsuccess/ui/widget/package_item.dart';
import '../widget/buttons.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Paket Data',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormWidget(
            title: '+628',
            isShowTitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 17,
            children: const [
              PackageItem(
                amount: 10,
                price: 100000,
                isSelected: true,
              ),
              PackageItem(
                amount: 25,
                price: 425000,
                isSelected: false,
              ),
              PackageItem(
                amount: 40,
                price: 2500000,
                isSelected: false,
              ),
              PackageItem(
                amount: 99,
                price: 5000000,
                isSelected: false,
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          CustomFilledButton(
            title: 'Checkout',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/package-success', (route) => false);
              }
            },
          ),
        ],
      ),
    );
  }
}
