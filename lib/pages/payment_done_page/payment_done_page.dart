import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tap_invest/providers/payment_provider.dart';
import 'package:tap_invest/utils/my_text_styles.dart';

class PaymentDonePage extends StatefulWidget {
  @override
  State<PaymentDonePage> createState() => _PaymentDonePageState();
}

class _PaymentDonePageState extends State<PaymentDonePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<PaymentProvider>(context, listen: false).mockGenerateContract();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Color(0xFF15803D)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 163,
                  child: Container(
                    width: 111,
                    height: 111,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Color(0xFF116631),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13.50),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x0A000000),
                          blurRadius: 10.80,
                          offset: Offset(0, 1.80),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 32,
                          top: 32,
                          child: Container(
                            width: 47.22,
                            height: 47.22,
                            child: Consumer<PaymentProvider>(
                              builder: (context, paymentProvider, _) => Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  paymentProvider.isGeneratingContract
                                      ? Image.asset(
                                          'assets/gifs/contract_gif.gif')
                                      : Image.asset(
                                          'assets/gifs/payment_done_gif.gif'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 311,
                  child: Column(
                    children: [
                      Consumer<PaymentProvider>(
                        builder: (context, paymentProivder, _) => Text(
                          !paymentProivder.isGeneratingContract
                              ? 'Payment done'
                              : 'Generating contract',
                          textAlign: TextAlign.center,
                          style: MyTestStyles.Inter60016.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'You are almost there!',
                        textAlign: TextAlign.center,
                        style: MyTestStyles.Inter40012.copyWith(
                            color: Colors.white.withOpacity(0.40)),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Do not leave this page, or press the back button.',
                        textAlign: TextAlign.center,
                        style: MyTestStyles.Inter40012.copyWith(
                            color: Colors.white.withOpacity(0.40)),
                      ),
                    ],
                  ),
                  // Container(
                  //   // height: 80,
                  //   child: Column(
                  //     mainAxisSize: MainAxisSize.min,
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       SizedBox(
                  //         width: 100,
                  //         child: Text('Payment done',
                  //             textAlign: TextAlign.center,
                  //             style: MyTestStyles.Inter60016.copyWith(
                  //               color: Colors.white,
                  //             )),
                  //       ),
                  //       const SizedBox(height: 16),
                  //       Opacity(
                  //         opacity: 0.60,
                  //         child: Container(
                  //           // width: double.infinity,
                  //           height: 40,
                  //           child: Column(
                  //             mainAxisSize: MainAxisSize.min,
                  //             mainAxisAlignment: MainAxisAlignment.start,
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               SizedBox(
                  //                 width: double.infinity,
                  // child: Text(
                  //   'You are almost there!',
                  //   textAlign: TextAlign.center,
                  //   style: MyTestStyles.Inter40012,
                  // ),
                  //               ),
                  //               const SizedBox(height: 4),
                  //               SizedBox(
                  //                 width: double.infinity,
                  // child: Text(
                  //   'Do not leave this page, or press the back button.',
                  //   textAlign: TextAlign.center,
                  //   style: MyTestStyles.Inter40012,
                  // ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ),

                // Positioned(
                //   left: -15,
                //   top: -22,
                //   child: Container(
                //     width: 390,
                //     height: 844,
                //     clipBehavior: Clip.antiAlias,
                //     decoration: BoxDecoration(),
                //     child: Stack(
                //       children: [
                //         Positioned(
                //           left: 191.90,
                //           top: 249.90,
                //           child: Container(
                //             width: 6.20,
                //             height: 6.20,
                //             decoration: ShapeDecoration(
                //               color: Color(0xFFD9D9D9),
                //               shape: OvalBorder(),
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
