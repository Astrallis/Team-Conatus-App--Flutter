import 'package:flutter/material.dart';
import '../utils/data.dart';
import '../utils/page_item.dart';
import '../utils/page_transformer.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.fromSize(
        size: const Size.fromHeight(500.0),
        child: PageTransformer(
          pageViewBuilder: (context, visibilityResolver) {
            return PageView.builder(
              controller: PageController(viewportFraction: 0.85),
              itemCount: sampleItems.length,
              itemBuilder: (context, index) {
                final item = sampleItems[index];
                final pageVisibility =
                    visibilityResolver.resolvePageVisibility(index);

                return IntroPageItem(
                  item: item,
                  pageVisibility: pageVisibility,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
