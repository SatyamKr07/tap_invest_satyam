import 'package:flutter/material.dart';
import 'package:tap_invest/utils/my_text_styles.dart';

class PurchasingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Container(
            width: 360,
            height: 800,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFFFBFBF6)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 360,
                  height: 90,
                  padding: const EdgeInsets.only(
                    top: 21,
                    left: 24,
                    right: 20,
                    bottom: 21,
                  ),
                  decoration: BoxDecoration(color: Color(0xFFFBFBF6)),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
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
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.only(left: 24, right: 20, bottom: 24),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
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
                                  Icon(Icons.arrow_back,
                                      color: Colors.grey, size: 16),
                                  Text(" Keshav Industries",
                                      style: MyTestStyles.Inter40014.copyWith(
                                        color: Colors.grey,
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 146,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 24),
                          clipBehavior: Clip.antiAlias,
                          decoration:
                              BoxDecoration(border: Border.all(width: 1)),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'ENTER AMOUNT',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black
                                        .withOpacity(0.4000000059604645),
                                    fontSize: 12,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600,
                                    height: 0.12,
                                    letterSpacing: 0.96,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '₹',
                                            style: TextStyle(
                                              color: Color(0xFFA8A29E),
                                              fontSize: 24,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w500,
                                              height: 0.06,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            '|',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFF0C0A09),
                                              fontSize: 24,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              height: 0.06,
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            'Min 50,000',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFFA8A29E),
                                              fontSize: 24,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w600,
                                              height: 0.06,
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
                        Opacity(
                          opacity: 0,
                          child: Container(
                            width: 360,
                            padding: const EdgeInsets.only(
                                left: 24, right: 20, bottom: 24),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    child: Text('Please enter an amount.',
                                        textAlign: TextAlign.center,
                                        style: MyTestStyles.Inter40014),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '₹',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFA8A29E),
                                                        fontSize: 14,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0.11,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    Text(
                                                      '56,555',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF475569),
                                                        fontSize: 16,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 18,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Net Yield',
                                                    style: TextStyle(
                                                      color: Color(0xFF475569),
                                                      fontSize: 12,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 0.12,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 10),
                                                  Container(
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'IRR',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF15803D),
                                                            fontSize: 12,
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            height: 0.12,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            width: 4),
                                                        Text(
                                                          '􀅴',
                                                          style: TextStyle(
                                                            color: Color(
                                                                0xFF15803D),
                                                            fontSize: 12,
                                                            fontFamily:
                                                                'SF Pro',
                                                            fontWeight:
                                                                FontWeight.w500,
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '13.11',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF475569),
                                                        fontSize: 16,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0.09,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    Text(
                                                      '%',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFA8A29E),
                                                        fontSize: 14,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
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
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '61',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFF475569),
                                                        fontSize: 16,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0.09,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 2),
                                                    Text(
                                                      'days',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFA8A29E),
                                                        fontSize: 14,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w500,
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
                  ),
                ),
                Container(
                  height: 160,
                  padding: const EdgeInsets.only(
                    top: 20,
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
                      Container(
                        // width: 316,
                        height: 90,
                        padding: const EdgeInsets.only(
                          top: 12,
                          left: 32,
                          right: 20,
                          bottom: 12,
                        ),
                        child: Row(
                          children: [
                            Container(
                              // width: 41,
                              // height: 41,
                              decoration: ShapeDecoration(
                                color: Color(0xFF15803D),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              'SWIPE TO PAY',
                              textAlign: TextAlign.center,
                              style: MyTestStyles.Inter60012,
                            ),
                          ],
                        ),
                      ),
                      // Container(
                      //   width: double.infinity,
                      //   height: 45,
                      //   decoration: ShapeDecoration(
                      //     color: Color(0xFFE7E5E4),
                      //     shape: RoundedRectangleBorder(
                      //       side:
                      //           BorderSide(width: 1, color: Color(0xFFE4E4E7)),
                      //       borderRadius: BorderRadius.circular(6),
                      //     ),
                      //   ),
                      //   child: Column(
                      //     mainAxisSize: MainAxisSize.min,
                      //     mainAxisAlignment: MainAxisAlignment.start,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Expanded(
                      //         child: Container(
                      //           width: double.infinity,
                      //           padding: const EdgeInsets.only(
                      //             top: 12,
                      //             left: 32,
                      //             right: 20,
                      //             bottom: 12,
                      //           ),
                      //           child: Row(
                      //             mainAxisSize: MainAxisSize.min,
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             crossAxisAlignment: CrossAxisAlignment.center,
                      //             children: [
                      //               Container(
                      //                 width: 312,
                      //                 height: 41,
                      //                 padding: const EdgeInsets.only(left: 269),
                      //                 decoration: ShapeDecoration(
                      //                   color: Color(0xFF15803D),
                      //                   shape: RoundedRectangleBorder(
                      //                       borderRadius:
                      //                           BorderRadius.circular(4)),
                      //                 ),
                      //                 child: Row(
                      //                   mainAxisSize: MainAxisSize.min,
                      //                   mainAxisAlignment:
                      //                       MainAxisAlignment.end,
                      //                   crossAxisAlignment:
                      //                       CrossAxisAlignment.center,
                      //                   children: [
                      //                     SizedBox(
                      //                       width: 43,
                      //                       height: 41,
                      //                       child: Text(
                      //                         '􀰑',
                      //                         textAlign: TextAlign.center,
                      //                         style: TextStyle(
                      //                           color: Color(0xFFFAFAF9),
                      //                           fontSize: 12,
                      //                           fontFamily: 'SF Pro',
                      //                           fontWeight: FontWeight.w500,
                      //                           height: 0.12,
                      //                           letterSpacing: 1.20,
                      //                         ),
                      //                       ),
                      //                     ),
                      //                   ],
                      //                 ),
                      //               ),
                      //               const SizedBox(width: 6),
                      //               Opacity(
                      //                 opacity: 0,
                      //                 child: Text(
                      //                   'SWIPE TO PAY',
                      //                   textAlign: TextAlign.center,
                      //                   style: TextStyle(
                      //                     color: Color(0xFF1C1917),
                      //                     fontSize: 12,
                      //                     fontFamily: 'Inter',
                      //                     fontWeight: FontWeight.w600,
                      //                     height: 0.12,
                      //                     letterSpacing: 1.20,
                      //                   ),
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
