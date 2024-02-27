import 'package:flutter/material.dart';
import 'package:tap_invest/utils/my_text_styles.dart';

class Documents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 456,
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 36,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Documents',
                style: MyTestStyles.Inter50016,
              ),
              const SizedBox(height: 16),
              _buildDocumentItem(
                leadingImage: 'assets/logos/document.png',
                titleText: 'Company Pitch Deck',
                subtitleText:
                    'Read more about the company and see how they pitch to investors.',
                trailingImage: 'assets/logos/arrow_down_in_circle.png',
              ),
              SizedBox(height: 16),
              _buildDocumentItem(
                leadingImage: 'assets/logos/document.png',
                titleText: 'Invoice Discounting Contract',
                subtitleText:
                    'All the legalese surrounding this deal and how it relates to you.',
                trailingImage: 'assets/logos/arrow_down_in_circle.png',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDocumentItem({
    required String leadingImage,
    required String titleText,
    required String subtitleText,
    required String trailingImage,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFE7E5E4)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Color(0xFFE7E5E4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(leadingImage),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Opacity(
                                opacity: 0.90,
                                child: Text(
                                  titleText,
                                  style: MyTestStyles.Inter50014,
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              subtitleText,
                              style: MyTestStyles.Inter40014.copyWith(
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(trailingImage),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
