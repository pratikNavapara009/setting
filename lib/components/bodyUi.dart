import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:setting_ui/globals.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Common",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.language,
                color: Colors.grey.shade700,
                size: 30,
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                "Language",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 86,
              ),
              Text(
                "English",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Container(
            height: 0.5,
            width: double.infinity,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.cloud_outlined,
                color: Colors.grey.shade700,
                size: 30,
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                "Environment",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 86,
              ),
              Text(
                "Production",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Account",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.phone,
                color: Colors.grey.shade700,
                size: 30,
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                "Phone number",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Container(
            height: 0.7,
            width: double.infinity,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.email,
                color: Colors.grey.shade700,
                size: 30,
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                "Email",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Container(
            height: 0.7,
            width: double.infinity,
            color: Colors.grey,
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.exit_to_app,
                color: Colors.grey.shade700,
                size: 30,
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                "Sign out",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Security",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.phonelink_lock,
                color: Colors.grey.shade700,
                size: 30,
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                "Lock app in background",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 60,
              ),
              (isIos)? CupertinoSwitch(
                activeColor: Colors.red,
                value: switch1,
                onChanged: (val) {
                  setState(() {
                    switch1 = val;
                  });
                },
              ): Switch(
                activeColor: Colors.red,
                value: switch1,
                onChanged: (val) {
                  setState(() {
                    switch1 = val;
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.fingerprint,
                color: Colors.grey.shade700,
                size: 30,
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                "Use fingerprint",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 128,
              ),
              (isIos)? CupertinoSwitch(
                activeColor: Colors.red,
                value: switch2,
                onChanged: (val) {
                  setState(() {
                    switch2 = val;
                  });
                },
              ): Switch(
                activeColor: Colors.red,
                value: switch2,
                onChanged: (val) {
                  setState(() {
                    switch2 = val;
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.lock,
                color: Colors.grey.shade700,
                size: 30,
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                "Change password",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                width: 105,
              ),
              (isIos)? CupertinoSwitch(
                activeColor: Colors.red,
                value: switch3,
                onChanged: (val) {
                  setState(() {
                    switch3 = val;
                  });
                },
              ): Switch(
                activeColor: Colors.red,
                value: switch3,
                onChanged: (val) {
                  setState(() {
                    switch3 = val;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 13,
          ),
          Container(
            height: 0.7,
            width: double.infinity,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              "Misc",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w600,
                fontSize: 17,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.event_note_outlined,
                color: Colors.grey.shade700,
                size: 30,
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                "Terms of Service ",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.my_library_books_outlined,
                color: Colors.grey.shade700,
                size: 30,
              ),
              SizedBox(
                width: 35,
              ),
              Text(
                "Open source licenses",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
