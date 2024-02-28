import 'package:intl/intl.dart';

extension DoubleExtension on num {
  // Capitalize word
  String currencyFormat() {
    try {
      int decimalDigits = 0;
//      debugPrint('lmm --? '+ this.toString().contains('.').toString() +" --" + this.toString());
      if (toString().contains('.')) {
        int jj = int.parse(toString().split('.')[1]);
        //      debugPrint('sd -> '+ jj.toString());
        if (jj > 0) {
          decimalDigits = 2;
        } else {
          decimalDigits = 0;
        }
      }
      return NumberFormat.currency(
              symbol: '', locale: 'hi', decimalDigits: decimalDigits)
          .format(this);
    } catch (e) {
      return NumberFormat.currency(symbol: '', locale: 'hi', decimalDigits: 2)
          .format(this);
    }
  }
}
