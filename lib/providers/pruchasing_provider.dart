import 'package:flutter/material.dart';

class PurchasingProvider extends ChangeNotifier {
  num totalReturns = 56555;
  getTotalReturns() {
    return 500000;
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
