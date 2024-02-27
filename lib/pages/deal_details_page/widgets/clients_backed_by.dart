import 'package:flutter/material.dart';

import '../../../utils/my_text_styles.dart';

class ClientsBackedBy extends StatelessWidget {
  const ClientsBackedBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Clients", style: MyTestStyles.Inter50016),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/logos/google_logo.png'),
            SizedBox(width: 24),
            Image.asset('assets/logos/google_logo.png'),
            SizedBox(width: 24),
            Image.asset('assets/logos/google_logo.png'),
          ],
        ),
        SizedBox(height: 24),
        Text("Backed By", style: MyTestStyles.Inter50016),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/logos/google_logo.png'),
            SizedBox(width: 24),
            Image.asset('assets/logos/google_logo.png'),
            SizedBox(width: 24),
            Image.asset('assets/logos/google_logo.png'),
          ],
        )
      ],
    );
  }
}
