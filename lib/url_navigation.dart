import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURLApp() async {
  var url = Uri.parse("https://pub.dev/documentation/url_launcher/latest/");
  if (!await canLaunchUrl(url)) {
    print("Sai");
    await launchUrl(url);
  } else {
    print("kumar");
    throw 'Could not launch $url';
  }
}

class UrlNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Url Navigation")),),
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: _launchURLApp, child: Text("Click to Navigate pub.dev")),
        ),
      ),
    );
  }

}