import 'package:flutter/material.dart';
import 'package:sclicingsuccess/ui/shared/helpers.dart';

import '../shared/theme.dart';

class PackageItem extends StatelessWidget {
  final int amount;
  final int price;
  final bool isSelected;

  const PackageItem({
    super.key,
    required this.amount,
    required this.price,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 145,
        height: 150,
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 22,
        ),
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: isSelected ? blueColor : whiteColor,
              width: 2,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${amount}GB',
              style: blackTextStyle.copyWith(
                fontSize: 30,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              formatCurrency(price),
              style: greyTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
          ],
        ));
  }
}
