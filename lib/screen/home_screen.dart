import 'package:flutter/material.dart';
import 'package:reusable_widgets_app_bars/components/default_appbar.dart';
import 'package:reusable_widgets_app_bars/screen/settings_screen.dart';
import 'package:provider/provider.dart';
import 'package:reusable_widgets_app_bars/utils/AppSettings.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HOME'),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(icon: Icon(Icons.settings), onPressed: () async {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(builder: (context) {
      //           return SettingsScreen();
      //         }),
      //       );
      //     }),
      //   ],
      // ),
      appBar: DefaultAppBar(
        height: 100,
        color: context.watch<AppSettings>().appColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                'HOME',
                textAlign: TextAlign.center,
              ),
            ),
            IconButton(
                icon: Icon(Icons.settings),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return SettingsScreen();
                    }),
                  );
                }),
          ],
        ),
      ),
      body: Container(
        //color: Colors.white,
        color: context.watch<AppSettings>().appColor,
      ),
    );
  }
}
