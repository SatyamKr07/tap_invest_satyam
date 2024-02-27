import 'package:flutter/material.dart';
import 'package:tap_invest/pages/purchasing_page/pruchasing_page.dart';
import 'package:tap_invest/utils/my_text_styles.dart';

class TapToInvest extends StatelessWidget {
  const TapToInvest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 360,
        height: 84,
        padding: const EdgeInsets.only(
          top: 21,
          left: 24,
          right: 20,
          bottom: 21,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0x0A000000),
              blurRadius: 4,
              offset: Offset(0, -4),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x0F000000),
              blurRadius: 1,
              offset: Offset(0, -1),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text('FILLED',
                          style: MyTestStyles.Inter60010.copyWith(
                              color: Colors.grey)),
                    ),
                    const SizedBox(height: 2),
                    SizedBox(
                      width: double.infinity,
                      child: Text('30%', style: MyTestStyles.Inter50016),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [
                    Color(0xff15803D),
                    Color(0xff15803D),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Colors.black.withOpacity(0.20000000298023224),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PruchasingPage2()),
                ),
                child: Text('Tap to Invest',
                    style:
                        MyTestStyles.Inter60014.copyWith(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
