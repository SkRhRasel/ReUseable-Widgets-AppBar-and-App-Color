import 'package:flutter/material.dart';
import 'package:reusable_widgets_app_bars/components/color_cell.dart';
import 'package:reusable_widgets_app_bars/utils/AppSettings.dart';
import 'package:reusable_widgets_app_bars/utils/constants.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.watch<AppSettings>().appColor,
        title: Text('Settings'),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 16,),
            Wrap(
              children: List<Widget>.generate(Constants.colors.length, (index) {
                return GestureDetector(
                  onTap: (){
                    context.read<AppSettings>().updateColor(index);
                  },
                  child: ColorCell(
                    color: Constants.colors[index],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
