import 'package:flutter/material.dart';
import 'package:tap_invest/utils/my_text_styles.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Highlights", style: MyTestStyles.Inter50016),
          const SizedBox(height: 16),
          SizedBox(
            height: 160,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                story(context),
                story(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container story(context) {
    return Container(
      width: MediaQuery.of(context).size.width - 80,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      margin: const EdgeInsets.only(right: 16),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE7E5E4)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/logos/bulb.png'),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: Opacity(
              opacity: 0.90,
              child: Text(
                'Agrizy was founded in 2021 by Vicky Dodani and Saket Chirania to provide an end-to-end solution to the agri processing market.',
                style: MyTestStyles.Inter40014.copyWith(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
