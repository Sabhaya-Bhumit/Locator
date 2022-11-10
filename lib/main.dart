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
                  onTap: () async {
                    PermissionStatus res = await Permission.location.request();
                    setState(() {
                      if (res == PermissionStatus.granted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Location is granted"),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.permanentlyDenied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Location is permanentlyDenied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.denied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Location is denied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.restricted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Location is restricted"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      }
                    });
                  },
                  child: permission(name: "location"),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () async {
                    PermissionStatus res = await Permission.phone.request();
                    setState(() {
                      if (res == PermissionStatus.granted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("phone is granted"),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.permanentlyDenied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("phone is permanentlyDenied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.denied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("phone is denied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.restricted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("phone is restricted"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      }
                    });
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
                  onTap: () async {
                    PermissionStatus res = await Permission.camera.request();
                    setState(() {
                      if (res == PermissionStatus.granted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("videos is granted"),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.permanentlyDenied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("videos is permanentlyDenied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.denied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("videos is denied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.restricted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("videos is restricted"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      }
                    });
                  },
                  child: permission(name: "videos"),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () async {
                    PermissionStatus res = await Permission.storage.request();
                    setState(() {
                      if (res == PermissionStatus.granted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("storage is granted"),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.permanentlyDenied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("storage is permanentlyDenied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.denied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("storage is denied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.restricted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("storage is restricted"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      }
                    });
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
                  onTap: () async {
                    PermissionStatus res =
                        await Permission.bluetoothConnect.request();
                    setState(() {
                      if (res == PermissionStatus.granted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("bluetoothConnect is granted"),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.permanentlyDenied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content:
                                Text("bluetoothConnect is permanentlyDenied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.denied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("bluetoothConnect is denied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.restricted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("bluetoothConnect is restricted"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      }
                    });
                  },
                  child: permission(name: "bluetooth"),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () async {
                    PermissionStatus res = await Permission.calendar.request();
                    setState(() {
                      if (res == PermissionStatus.granted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("calendar is granted"),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.permanentlyDenied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("calendar is permanentlyDenied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.denied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("calendar is denied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.restricted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("calendar is restricted"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      }
                    });
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
                  onTap: () async {
                    PermissionStatus res = await Permission.sms.request();
                    setState(() {
                      if (res == PermissionStatus.granted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("sms is granted"),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.permanentlyDenied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("sms is permanentlyDenied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.denied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("sms is denied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.restricted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("sms is restricted"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      }
                    });
                  },
                  child: permission(name: "sms"),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () async {
                    PermissionStatus res =
                        await Permission.microphone.request();
                    setState(() {
                      if (res == PermissionStatus.granted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("microphone is granted"),
                            backgroundColor: Colors.green,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.permanentlyDenied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("microphone is permanentlyDenied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.denied) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("microphone is denied"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      } else if (res == PermissionStatus.restricted) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("microphone is restricted"),
                            backgroundColor: Colors.redAccent,
                            behavior: SnackBarBehavior.floating));
                      }
                    });
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
