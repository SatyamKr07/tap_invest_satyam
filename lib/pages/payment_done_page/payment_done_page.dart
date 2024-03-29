import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tap_invest/providers/payment_provider.dart';
import 'package:tap_invest/utils/my_text_styles.dart';

class PaymentDonePage extends StatefulWidget {
  const PaymentDonePage({super.key});

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
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xFF15803D)),
        child: Column(
          children: [
            const SizedBox(height: 150),
            Container(
              width: 111,
              height: 111,
              decoration: ShapeDecoration(
                color: const Color(0xFF116631),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.50),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x0A000000),
                    blurRadius: 10.80,
                    offset: Offset(0, 1.80),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 32,
                    child: SizedBox(
                      width: 47.22,
                      height: 47.22,
                      child: Consumer<PaymentProvider>(
                        builder: (context, paymentProvider, _) => Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            paymentProvider.isGeneratingContract
                                ? Image.asset('assets/gifs/contract_gif.gif')
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
            const SizedBox(height: 32),
            Column(
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
                const SizedBox(height: 16),
                Text(
                  'You are almost there!',
                  textAlign: TextAlign.center,
                  style: MyTestStyles.Inter40012.copyWith(
                      color: Colors.white.withOpacity(0.70)),
                ),
                const SizedBox(height: 4),
                Text(
                  'Do not leave this page, or press the back button.',
                  textAlign: TextAlign.center,
                  style: MyTestStyles.Inter40012.copyWith(
                      color: Colors.white.withOpacity(0.70)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
