import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting_ui/components/bodyUi.dart';

import 'globals.dart';

void main() {
  runApp(
    Setting(),
  );
}

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return (isIos)
        ? CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text(
                  "Setting ui",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                backgroundColor: Colors.blueGrey,
                trailing: CupertinoSwitch(
                  activeColor: Colors.red.shade900,
                  value: isIos,
                  onChanged: (val) {
                    setState(() {
                      isIos = val;
                    });
                  },
                ),
              ),
              child: Body(),
            ),
          )
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: Text("Settings UI"),
                actions: [
                  Switch(
                      activeColor: Colors.red.shade900,
                      value: isIos,
                      onChanged: (val) {
                        setState(() {
                          isIos = val;
                        });
                      })
                ],
                backgroundColor: Colors.blueGrey,
              ),
              body: Body(),
            ),
          );
  }
}
