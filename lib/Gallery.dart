
import 'package:flutter/widgets.dart';

import 'GalleryListItem.dart';

class Gallery extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        position++;
        return GalleryListItem(position);
      },
      itemCount: 20,
    );
  }
}