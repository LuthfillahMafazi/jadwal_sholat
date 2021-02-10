import 'package:flutter/material.dart';
import 'package:flutter_jadwalsholat/text_style.dart';

import 'model/ResponJadwal.dart';

// ignore: must_be_immutable
class HeaderContent extends StatelessWidget {
  ResponJadwal responJadwal;

  HeaderContent(this.responJadwal);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20.0,
      bottom: 20.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(responJadwal.city, style: styleCityHeader),
          Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
                color: Colors.white,
                size: 20.0,
              ),
              Text(responJadwal.address, style: styleAdressHeader)
            ],
          )
        ],
      ),
    );
  }
}