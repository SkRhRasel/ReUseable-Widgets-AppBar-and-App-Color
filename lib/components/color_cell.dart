import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reusable_widgets_app_bars/utils/AppSettings.dart';

class ColorCell extends StatelessWidget {
  //
  ColorCell({this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        color: color,
      ),
      child: context.watch<AppSettings>().appColor == color
          ? Icon(
              Icons.check_circle,
              color: Colors.white,
            )
          : SizedBox(),
    );
  }
}
