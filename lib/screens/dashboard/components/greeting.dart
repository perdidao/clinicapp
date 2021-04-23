import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Greeting extends StatelessWidget {
  const Greeting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: opSpacing * 3),
      padding: EdgeInsets.all(opSpacing),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bom dia',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: opMidGray,
                ),
              ),
              Text(
                'Laís Lopes',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Container(
            width: opSpacing * 2.5,
            height: opSpacing * 2.5,
            padding: EdgeInsets.all(opSpacing * 0.5),
            decoration: BoxDecoration(
              color: opHighlight,
              borderRadius: BorderRadius.all(
                Radius.circular(opSpacing * 0.5),
              ),
            ),
            child: SvgPicture.asset(
              "assets/images/odontopro.svg",
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
