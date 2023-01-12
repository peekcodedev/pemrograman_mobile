import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sclicingsuccess/ui/shared/theme.dart';
import 'package:sclicingsuccess/ui/widget/buttons.dart';

class TransferAmountPage extends StatefulWidget {
  const TransferAmountPage({super.key});

  @override
  State<TransferAmountPage> createState() => _TransferAmountPageState();
}

class _TransferAmountPageState extends State<TransferAmountPage> {
  final TextEditingController amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();

    amountController.addListener(() {
      final text = amountController.text;

      amountController.value = amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          decimalDigits: 0,
          symbol: '',
        ).format(
          int.parse(
            text.replaceAll('.', ''),
          ),
        ),
      );
    });
  }

  addamount(String number) {
    if (amountController.text == '0') {
      amountController.text = '';
    }

    setState(() {
      amountController.text = amountController.text + number;
    });
  }

  deleteamount() {
    if (amountController.text.isNotEmpty) {
      setState(() {
        amountController.text = amountController.text
            .substring(0, amountController.text.length - 1);
        if (amountController.text == '') {
          amountController.text = '0';
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              'Total amount',
              style: whiteTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(
            height: 67,
          ),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                controller: amountController,
                cursorColor: greyColor,
                enabled: false,
                style: whiteTextStyle.copyWith(
                  fontSize: 36,
                  fontWeight: medium,
                ),
                decoration: InputDecoration(
                  prefixIcon: Text(
                    'Rp',
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: medium,
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 66,
          ),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            children: [
              CustomInputBotton(
                title: '1',
                onTap: () {
                  addamount('1');
                },
              ),
              CustomInputBotton(
                title: '2',
                onTap: () {
                  addamount('2');
                },
              ),
              CustomInputBotton(
                title: '3',
                onTap: () {
                  addamount('3');
                },
              ),
              CustomInputBotton(
                title: '4',
                onTap: () {
                  addamount('4');
                },
              ),
              CustomInputBotton(
                title: '5',
                onTap: () {
                  addamount('5');
                },
              ),
              CustomInputBotton(
                title: '6',
                onTap: () {
                  addamount('6');
                },
              ),
              CustomInputBotton(
                title: '7',
                onTap: () {
                  addamount('7');
                },
              ),
              CustomInputBotton(
                title: '8',
                onTap: () {
                  addamount('8');
                },
              ),
              CustomInputBotton(
                title: '9',
                onTap: () {
                  addamount('9');
                },
              ),
              const SizedBox(
                height: 60,
                width: 60,
              ),
              CustomInputBotton(
                title: '0',
                onTap: () {
                  addamount('0');
                },
              ),
              GestureDetector(
                onTap: () {
                  deleteamount();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: numberBackgroundColor,
                  ),
                  child: Center(
                      child: Icon(
                    Icons.arrow_left,
                    color: whiteColor,
                    size: 50,
                  )),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/transfer-success', (route) => false);
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextButton(
            title: 'Terms & Condition',
            onPressed: () {},
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
