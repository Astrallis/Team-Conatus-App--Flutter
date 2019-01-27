import 'package:flutter/material.dart';

import '../data/gallery_data.dart';
import '../utils/page_transformer/page_item.dart';
import '../utils/page_transformer/page_transformer.dart';

class Gallery extends StatelessWidget {
  List  _gallery = GalleryData.galleryData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.fromSize(
        size: const Size.fromHeight(500.0),
        child: PageTransformer(
          pageViewBuilder: (context, visibilityResolver) {
            return PageView.builder(
              controller: PageController(viewportFraction: 0.85),
              itemCount: _gallery.length,
              itemBuilder: (context, index) {
                final item = _gallery[index];
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
