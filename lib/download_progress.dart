import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';

class DownloadProgress extends StatefulWidget {
  const DownloadProgress({super.key});

  @override
  State<DownloadProgress> createState() => _DownloadProgressState();
}

class _DownloadProgressState extends State<DownloadProgress> {
  var downloadPercent = "0";
  double percent = 0;

  /*void download(String original) async {
    var time = DateTime.now().microsecondsSinceEpoch;
    var path = "/storage/emulated/0/Download/image-$time.jpg";
    var file = File(path);
    var res = await http.Client().get(Uri.parse(original));
    file.writeAsBytes(res.bodyBytes);
  }*/

  void download() async{
    var time = DateTime.now().microsecondsSinceEpoch;
    var path = "/storage/emulated/0/Download/image-$time.jpg";
    Dio().download("https://images.unsplash.com/photo-1509043759401-136742328bb3?ixlib=rb-4.0.3", path,onReceiveProgress: (actualBytes,totalBytes){
      var percentage = actualBytes/totalBytes *100;
      percent = percentage/100;
      setState(() {
        downloadPercent = percentage.floor().toString();
      });
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("D O W N L O A D"),centerTitle: true,),
      body:Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(onPressed: () {
                download();
              }, child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.download),
                  SizedBox(width: 10,),
                  Text("Download")
                ],
              ),),
            ),
            SizedBox(height: 50,),
            Text("download : $downloadPercent %" ),
            SizedBox(height: 20,),
            /*LinearProgressIndicator(value: percent,
            )*/
            CircularProgressIndicator(value: percent,)

          ],
        ),
      ),

    );
  }
}
