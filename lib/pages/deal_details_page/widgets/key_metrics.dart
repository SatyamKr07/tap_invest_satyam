import 'package:flutter/material.dart';
import 'package:tap_invest/utils/my_text_styles.dart';

class KeyMetrics extends StatelessWidget {
  const KeyMetrics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 16),
          child: Text(
            "Key Metrics",
            style: MyTestStyles.Inter50016,
          ),
        ),
        SizedBox(
          height: 30,
          child: DefaultTabController(
            length: 4,
            child: TabBar(
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                labelColor: Colors.white,
                overlayColor: MaterialStateProperty.all(Colors.green),
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.green),
                tabs: [
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "FUNDING",
                          style: MyTestStyles.Inter60010,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "TRACTION",
                          style: MyTestStyles.Inter60010,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "FINANCIALS",
                          style: MyTestStyles.Inter60010,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "FUNDING",
                          style: MyTestStyles.Inter60010,
                        ),
                      ),
                    ),
                  ),
                ]),
            //   Scaffold(
            //     appBar: AppBar(
            //       backgroundColor: Colors.white,
            //       elevation: 0,
            //       bottom: TabBar(
            //           unselectedLabelColor: Colors.redAccent,
            //           indicatorSize: TabBarIndicatorSize.label,
            //           indicator: BoxDecoration(
            //               borderRadius: BorderRadius.circular(50),
            //               color: Colors.redAccent),
            //           tabs: [
            //             Tab(
            //               child: Container(
            //                 decoration: BoxDecoration(
            //                     borderRadius: BorderRadius.circular(50),
            //                     border:
            //                         Border.all(color: Colors.redAccent, width: 1)),
            //                 child: Align(
            //                   alignment: Alignment.center,
            //                   child: Text("APPS"),
            //                 ),
            //               ),
            //             ),
            //             Tab(
            //               child: Container(
            //                 decoration: BoxDecoration(
            //                     borderRadius: BorderRadius.circular(50),
            //                     border:
            //                         Border.all(color: Colors.redAccent, width: 1)),
            //                 child: Align(
            //                   alignment: Alignment.center,
            //                   child: Text("MOVIES"),
            //                 ),
            //               ),
            //             ),
            //             Tab(
            //               child: Container(
            //                 decoration: BoxDecoration(
            //                     borderRadius: BorderRadius.circular(50),
            //                     border:
            //                         Border.all(color: Colors.redAccent, width: 1)),
            //                 child: Align(
            //                   alignment: Alignment.center,
            //                   child: Text("GAMES"),
            //                 ),
            //               ),
            //             ),
            //           ]),
            //     ),
            //     body: TabBarView(children: [
            //       Icon(Icons.apps),
            //       Icon(Icons.movie),
            //       Icon(Icons.games),
            //     ]),
            //   ),
          ),
        ),
      ],
    );
  }
}
