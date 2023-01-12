import 'package:flutter/material.dart';
import 'package:sclicingsuccess/ui/shared/theme.dart';
import 'package:sclicingsuccess/ui/widget/buttons.dart';
import 'package:sclicingsuccess/ui/widget/form.dart';
import 'package:sclicingsuccess/ui/widget/transfer_recent_user_item.dart';
import 'package:sclicingsuccess/ui/widget/transfer_result_item.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
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
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const CustomFormWidget(
            title: 'by username',
            isShowTitle: false,
          ),
          // buildRecentUsers(),
          buildResult(),
          const SizedBox(
            height: 230,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

Widget buildRecentUsers() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Users',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const TransferRecentUserItem(
          imageUrl: 'assets/img_friend1.png',
          name: 'Yonna Jie',
          username: 'yoenna',
          isVerified: true,
        ),
        const TransferRecentUserItem(
          imageUrl: 'assets/img_friend2.png',
          name: 'John Hi',
          username: 'johnhi',
          isVerified: false,
        ),
        const TransferRecentUserItem(
          imageUrl: 'assets/img_friend3.png',
          name: 'Yanna Jie',
          username: 'yoenna',
          isVerified: false,
        ),
      ],
    ),
  );
}

Widget buildResult() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Result',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Wrap(
          spacing: 2,
          runSpacing: 2,
          children: const [
            TrasnferResultUserItem(
              imageUrl: 'assets/img_friend1.png',
              name: 'Yonna Jie',
              username: 'yoenna',
              isVerified: true,
            ),
            TrasnferResultUserItem(
              imageUrl: 'assets/img_friend2.png',
              name: 'Yonne Ka',
              username: 'yoenyu',
              isVerified: false,
              isSelected: true,
            ),
          ],
        )
      ],
    ),
  );
}
