import 'package:flutter/material.dart';
import 'package:tap_invest/pages/deal_details_page/widgets/active_deals_data_widget.dart';
import 'package:tap_invest/pages/deal_details_page/widgets/clients_backed_by.dart';
import 'package:tap_invest/pages/deal_details_page/widgets/documents.dart';
import 'package:tap_invest/pages/deal_details_page/widgets/highlights.dart';
import 'package:tap_invest/pages/deal_details_page/widgets/invt_data_widget.dart';
import 'package:tap_invest/utils/my_text_styles.dart';

import 'widgets/key_metrics.dart';

class DealDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Back to Deals',
          style: MyTestStyles.Inter50014.copyWith(color: Colors.green),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.green,
              size: 20,
            ),
            onPressed: () {
              // Add your back button functionality here
            },
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 24.0, right: 24),
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/logos/logo.png',
                        height: 100, width: 100),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text("Agrizy ", style: MyTestStyles.Inter60018),
                        Icon(Icons.arrow_back, color: Colors.grey, size: 20),
                        Text(" Keshav Industries",
                            style: MyTestStyles.Inter60018.copyWith(
                              color: Colors.grey,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          MyTestStyles.Inter40014.copyWith(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
                InvtDataWidget(),
              ],
            ),
          ),
          SizedBox(height: 16),
          Divider(thickness: 1),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 0),
            child: ClientsBackedBy(),
          ),
          SizedBox(height: 16),
          Divider(thickness: 1),
          SizedBox(height: 24),
          Highlights(),
          SizedBox(height: 32),
          Divider(thickness: 1),
          SizedBox(height: 24),
          KeyMetrics(),
          SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ActiveDealsDataWidget(),
          ),
          SizedBox(height: 32),
          Divider(thickness: 1),
          SizedBox(height: 24),
          Documents(),
          SizedBox(height: 70),
        ],
      ),
    );
  }
}
