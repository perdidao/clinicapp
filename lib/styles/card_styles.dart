import 'package:flutter/material.dart';

abstract class CardStyles {
  static final defaultCard = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(10)),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 10,
        spreadRadius: 0,
        offset: Offset(
          0,
          5,
        ),
      )
    ],
  );

  static final smallRadiusCard = defaultCard.copyWith(
    borderRadius: BorderRadius.all(Radius.circular(5)),
  );

  static final bigRadiusCard = defaultCard.copyWith(
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );
}
