import 'package:flutter/material.dart';
import 'package:tap_invest/pages/purchasing_page/widgets/swipe_to_pay_widget.dart';

import '../../utils/my_text_styles.dart';

class PruchasingPage2 extends StatelessWidget {
  const PruchasingPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            padding: EdgeInsets.only(left: 24, top: 24),
            width: 320,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 36,
                  height: 36,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0x1E15803D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(999),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.green,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Purchasing',
                  style: MyTestStyles.Inter60018,
                ),
                const SizedBox(height: 2),
                Row(
                  children: [
                    Text("Agrizy ",
                        style: MyTestStyles.Inter40014.copyWith(
                            color: Colors.grey)),
                    Icon(Icons.arrow_back, color: Colors.grey, size: 16),
                    Text(" Keshav Industries",
                        style: MyTestStyles.Inter40014.copyWith(
                          color: Colors.grey,
                        )),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Divider(thickness: 1),
          SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: Text(
              'ENTER AMOUNT',
              textAlign: TextAlign.center,
              style: MyTestStyles.Inter60012.copyWith(
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: TextField(
                    textAlign: TextAlign.center,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Min 50000',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Divider(thickness: 1),
          SizedBox(height: 24),
          Expanded(
            child: Container(
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 168,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          decoration: BoxDecoration(
                              // border: Border.only(
                              //   left: BorderSide(color: Color(0xFFE4E4E7)),
                              //   top: BorderSide(color: Color(0xFFE4E4E7)),
                              //   right: BorderSide(color: Color(0xFFE4E4E7)),
                              //   bottom: BorderSide(width: 1, color: Color(0xFFE4E4E7)),
                              // ),
                              ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 155,
                                child: Text(
                                  'Total Returns',
                                  style: TextStyle(
                                    color: Color(0xFF475569),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.12,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Container(
                                  height: 24,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '₹',
                                        style: TextStyle(
                                          color: Color(0xFFA8A29E),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0.11,
                                        ),
                                      ),
                                      const SizedBox(width: 2),
                                      Text(
                                        '56,555',
                                        style: TextStyle(
                                          color: Color(0xFF475569),
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0.09,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          decoration: BoxDecoration(
                              // border: Border.only(
                              //   left: BorderSide(color: Color(0xFFE4E4E7)),
                              //   top: BorderSide(color: Color(0xFFE4E4E7)),
                              //   right: BorderSide(color: Color(0xFFE4E4E7)),
                              //   bottom: BorderSide(width: 1, color: Color(0xFFE4E4E7)),
                              // ),
                              ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 18,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Net Yield',
                                      style: TextStyle(
                                        color: Color(0xFF475569),
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0.12,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'IRR',
                                            style: TextStyle(
                                              color: Color(0xFF15803D),
                                              fontSize: 12,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 0.12,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            '􀅴',
                                            style: TextStyle(
                                              color: Color(0xFF15803D),
                                              fontSize: 12,
                                              fontFamily: 'SF Pro',
                                              fontWeight: FontWeight.w500,
                                              height: 0.12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Container(
                                  height: 24,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '13.11',
                                        style: TextStyle(
                                          color: Color(0xFF475569),
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0.09,
                                        ),
                                      ),
                                      const SizedBox(width: 2),
                                      Text(
                                        '%',
                                        style: TextStyle(
                                          color: Color(0xFFA8A29E),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0.11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          decoration: BoxDecoration(
                              // border: Border.only(
                              //   left: BorderSide(),
                              //   top: BorderSide(),
                              //   right: BorderSide(),
                              //   bottom: BorderSide(width: 1),
                              // ),
                              ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 155,
                                child: Text(
                                  'Tenure',
                                  style: TextStyle(
                                    color: Color(0xFF475569),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.12,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Container(
                                  height: 24,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '61',
                                        style: TextStyle(
                                          color: Color(0xFF475569),
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0.09,
                                        ),
                                      ),
                                      const SizedBox(width: 2),
                                      Text(
                                        'days',
                                        style: TextStyle(
                                          color: Color(0xFFA8A29E),
                                          fontSize: 14,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          height: 0.11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 120,
        padding: const EdgeInsets.only(
          top: 16,
          left: 24,
          right: 20,
          bottom: 24,
        ),
        decoration: BoxDecoration(
          color: Color(0xFFFBFBF6),
          boxShadow: [
            BoxShadow(
              color: Color(0x1E000000),
              blurRadius: 0,
              offset: Offset(0, -0.50),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x0A000000),
              blurRadius: 4,
              offset: Offset(0, -4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: SizedBox(
                      child: Opacity(
                        opacity: 0.90,
                        child: Text('Balance: ₹1,00,000',
                            style: MyTestStyles.Inter40012),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: SizedBox(
                      child: Opacity(
                        opacity: 0.90,
                        child: Text(
                          'Required: ₹0',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF44403C),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0.12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SwipeToPayWidget()
          ],
        ),
      ),
    );
  }
}
