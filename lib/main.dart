import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    ),
  );
}

Widget permission({required String name}) {
  return Ink(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
        border: Border.all(
            color: Colors.black, width: 5, strokeAlign: StrokeAlign.inside)),
    child: Container(
      height: 160,
      width: 160,
      alignment: Alignment.center,
      child: Text(
        "${name}",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Permission App"),
          centerTitle: true,
          backgroundColor: Colors.red,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    openAppSettings();
                  });
                },
                icon: Icon(Icons.settings))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Permission.location.request();
                  },
                  child: permission(name: "location"),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Permission.phone.request();
                  },
                  child: permission(name: "phone"),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Permission.camera.request();
                  },
                  child: permission(name: "videos"),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Permission.storage.request();
                  },
                  child: permission(name: "storage"),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Permission.bluetoothConnect.request();
                  },
                  child: permission(name: "bluetooth"),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Permission.calendar.request();
                  },
                  child: permission(name: "calendar"),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                InkWell(
                  onTap: () {
                    Permission.sms.request();
                  },
                  child: permission(name: "sms"),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Permission.microphone.request();
                  },
                  child: permission(name: "microphone"),
                ),
                SizedBox(width: 10),
              ],
            ),
          ],
        )));
  }
}
