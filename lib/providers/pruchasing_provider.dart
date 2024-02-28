import 'package:flutter/material.dart';

class PurchasingProvider extends ChangeNotifier {
  num totalReturns = 0;
  TextEditingController tecAmountField = TextEditingController()..text = "";
  getTotalReturns() {
    return totalReturns;
  }

  setAmount(int value) {
    if (value < 50000) {
      totalReturns = 0;
      notifyListeners();
    } else {
      totalReturns = value;
      totalReturns = totalReturns + totalReturns * 13.11 / 100;
      notifyListeners();
    }
  }
}
