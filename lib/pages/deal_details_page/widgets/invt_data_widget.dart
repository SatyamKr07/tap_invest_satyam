import 'package:flutter/material.dart';
import 'package:tap_invest/utils/my_text_styles.dart';

class InvtDataWidget extends StatelessWidget {
  const InvtDataWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0x0fd6d3d1),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        childAspectRatio: 2,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[300]!,
                width: 1.0,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
              ),
            ),
            child: buildTextWithSpans('MIN INVT', '₹ ', '1 ', 'Lakh'),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey[300]!,
                  width: 1.0,
                ),
                right: BorderSide(
                  color: Colors.grey[300]!,
                  width: 1.0,
                ),
                left: BorderSide(
                  color: Colors.grey[300]!,
                  width: 0.0,
                ),
                bottom: BorderSide(
                  color: Colors.grey[300]!,
                  width: 1.0,
                ),
              ),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10.0),
              ),
            ),
            child: buildTextWithSpans('TENURE', '', '61 ', 'days'),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey[300]!,
                  width: 0.0,
                ),
                right: BorderSide(
                  color: Colors.grey[300]!,
                  width: 1.0,
                ),
                left: BorderSide(
                  color: Colors.grey[300]!,
                  width: 1.0,
                ),
                bottom: BorderSide(
                  color: Colors.grey[300]!,
                  width: 1.0,
                ),
              ),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
              ),
            ),
            child: buildTextWithSpans('NET YIELD', '', '13.23 ', '%'),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16.0),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey[300]!,
                  width: 0.0,
                ),
                right: BorderSide(
                  color: Colors.grey[300]!,
                  width: 1.0,
                ),
                left: BorderSide(
                  color: Colors.grey[300]!,
                  width: 0.0,
                ),
                bottom: BorderSide(
                  color: Colors.grey[300]!,
                  width: 1.0,
                ),
              ),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: buildTextWithSpans('RAISED', '', '70 ', '%'),
          ),
        ],
      ),
    );
  }

  Widget buildTextWithSpans(
      String mainText, String spanText1, String spanText2, String spanText3) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(mainText, style: MyTestStyles.Inter60010),
        const SizedBox(height: 8),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: spanText1,
                style: MyTestStyles.Inter50016.copyWith(color: Colors.grey),
              ),
              TextSpan(
                text: spanText2,
                style: MyTestStyles.Inter50016.copyWith(color: Colors.black),
              ),
              TextSpan(
                text: spanText3,
                style: MyTestStyles.Inter50016.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
