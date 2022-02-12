import 'package:flutter/material.dart';
import 'package:payment/theme.dart';

class PaymentPage extends StatefulWidget {
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget option(int index, String title, String subTitle, String pricing) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: selectedIndex == index
                  ? const Color(0xff409BEE)
                  : const Color(0xffE2DBDB),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  selectedIndex == index
                      ? Image.asset(
                          'assets/images/check2.png',
                          width: 20,
                        )
                      : Image.asset(
                          'assets/images/check.png',
                          width: 20,
                        ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        subTitle,
                        style: greyTwoTextStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 76,
                  ),
                  Text(
                    pricing,
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(top: 68, left: 41, right: 41),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/images/icon_one.png',
                width: 293,
                height: 200,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Upgrade to',
                  style: whiteTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  width: 9,
                ),
                Text(
                  'Pro',
                  style: blueTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              'Go unlock all features and\nbuild your own bussiness bigger',
              style: greyTextStyle.copyWith(
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return Column(
        children: [
          Container(
            width: 350,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff409BEE),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(71)),
              ),
              onPressed: () {},
              child: Text(
                'Checkout Now',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff01032E),
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            const SizedBox(
              height: 54,
            ),
            option(0, ' Monthly', 'Good for starting up', '\$20'),
            option(1, ' Quarterly', 'Focusing on Building', '\$50'),
            option(2, ' Yearly', 'Steady Company', '\$230'),
            const SizedBox(
              height: 30,
            ),
            selectedIndex == -1 ? const SizedBox() : checkoutButton(),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
