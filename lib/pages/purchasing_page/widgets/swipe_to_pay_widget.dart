import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tap_invest/pages/payment_done_page/payment_done_page.dart';
import 'package:tap_invest/providers/payment_provider.dart';
import '../../../providers/pruchasing_provider.dart';
import '../../../utils/my_text_styles.dart';

class SwipeToPayWidget extends StatefulWidget {
  const SwipeToPayWidget({super.key});

  @override
  _SwipeToPayWidgetState createState() => _SwipeToPayWidgetState();
}

class _SwipeToPayWidgetState extends State<SwipeToPayWidget> {
  double _dragPosition = 50.0;
  bool _isDragEnabled = false;

  @override
  Widget build(BuildContext context) {
    PurchasingProvider purchasingProvider =
        Provider.of<PurchasingProvider>(context);
    return Container(
      width: double.infinity,
      height: 50.0,
      decoration: ShapeDecoration(
        color: Colors.grey[200],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              'SWIPE TO PAY',
              textAlign: TextAlign.center,
              style: MyTestStyles.Inter60012,
            ),
          ),
          Positioned(
            left: 0,
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                if (_isDragEnabled) {
                  setState(() {
                    _dragPosition += details.delta.dx;
                    if (_dragPosition >
                        MediaQuery.of(context).size.width - 100) {
                      if (purchasingProvider.totalReturns >= 50000) {
                        HapticFeedback.mediumImpact(); // A
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChangeNotifierProvider(
                              create: (context) => PaymentProvider(),
                              child: const PaymentDonePage(),
                            ),
                          ),
                        );
                      } else {
                        _isDragEnabled = false;
                        _dragPosition = 50;
                        HapticFeedback.heavyImpact();
                      }
                    }
                  });
                }
              },
              onHorizontalDragEnd: (_) {
                setState(() {
                  _isDragEnabled = true;
                });
              },
              child: Container(
                width: _dragPosition < 50 ? 50 : _dragPosition,
                height: 50.0,
                decoration: ShapeDecoration(
                  color: const Color(0xFF15803D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
