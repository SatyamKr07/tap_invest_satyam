import 'package:flutter/material.dart';

class PaymentProvider extends ChangeNotifier {
  bool isGeneratingContract = false;
  mockGenerateContract() async {
    await Future.delayed(const Duration(seconds: 3), () {
      isGeneratingContract = true;
    });
    notifyListeners();
  }
}
