import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GalleryListItem extends StatelessWidget {
  int _position = 0;

  GalleryListItem(this._position);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 12.0),
              child: Image.asset("assets/images/turkey.jpg")),
          Padding(
            padding: EdgeInsets.fromLTRB(12.0, 0, 12.0, 12.0),
            child: Text(("item number: " + _position.toString()),
                style: Theme
                    .of(context)
                    .textTheme
                    .headline6),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(12.0, 0, 12.0, 12.0),
            child: Text(
                "Rights of Nature is the recognition and honoring that Nature has rights.  It is the recognition that our ecosystems – including trees, oceans, animals, mountains – have rights just as human beings have rights. Rights of Nature is about balancing what is good for human beings against what is good for other species, what is good for the planet as a world.  It is the holistic recognition that all life, all ecosystems on our planet are deeply intertwined."),
          )
        ],
      ),
    );
  }
}