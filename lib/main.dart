import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tap_invest/pages/deal_details_page/deal_details_page.dart';
import 'package:tap_invest/providers/pruchasing_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PurchasingProvider(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DealDetailsPage(),
    );
  }
}
