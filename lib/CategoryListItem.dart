import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryListItem extends StatefulWidget {
  @override
  State<CategoryListItem> createState() {
    return _MyCategoryListItem();
  }
}

class _MyCategoryListItem extends State<CategoryListItem> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        child: Container(
          height: 100,
          padding: EdgeInsets.all(12.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(12.0),
            splashColor: Colors.blueAccent,
            highlightColor: Colors.lightBlueAccent,
            onTap: () {
              print("object");
            },
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.fastfood,
                    size: 60,
                    color: Colors.redAccent,
                  ),
                ),
                Center(
                    child: Text(
                  "Ana G3aaan",
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
