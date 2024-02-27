import 'package:flutter/material.dart';
import 'package:tap_invest/utils/my_text_styles.dart';

class Highlights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Highlights", style: MyTestStyles.Inter50016),
          SizedBox(height: 16),
          Container(
            height: 200,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                story(),
                story(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container story() {
    return Container(
      width: 300,
      height: 173,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      margin: EdgeInsets.only(right: 16),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFE7E5E4)),
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
