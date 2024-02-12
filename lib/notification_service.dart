import "package:flutter/material.dart";
import "package:practice_app/notification_functionality.dart";

class NotificationServices extends StatefulWidget {
  const NotificationServices({super.key});

  @override
  State<NotificationServices> createState() => _NotificationServicesState();
}

class _NotificationServicesState extends State<NotificationServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("N O T I F I C A T I O N"),),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: ElevatedButton(onPressed: () {
            NotificationService().showNotification(title: "Notification",body: "It Works");
          }, child: Text("Click to get Notification"),),
        ),
      ),
    );
  }
}
