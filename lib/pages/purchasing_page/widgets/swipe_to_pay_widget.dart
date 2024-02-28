import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tap_invest/pages/payment_done_page/payment_done_page.dart';
import '../../../providers/pruchasing_provider.dart';
import '../../../utils/my_text_styles.dart';

class SwipeToPayWidget extends StatefulWidget {
  @override
  _SwipeToPayWidgetState createState() => _SwipeToPayWidgetState();
}

class _SwipeToPayWidgetState extends State<SwipeToPayWidget> {
  double _dragPosition = 50.0;

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
                setState(() {
                  _dragPosition += details.delta.dx;
                  if (_dragPosition > MediaQuery.of(context).size.width - 100) {
                    int amount = purchasingProvider.getTotalReturns();
                    if (amount >= 50000) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PaymentDonePage()),
                      );
                    } else {
                      _dragPosition = 50;
                    }
                  }
                });
              },
              child: Container(
                width: _dragPosition < 50 ? 50 : _dragPosition,
                height: 50.0,
                decoration: ShapeDecoration(
                  color: Color(0xFF15803D),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Row(
                  children: [
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
