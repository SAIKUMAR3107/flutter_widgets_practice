import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:practice_app/pdf_api.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:translator/translator.dart';

class FileReader extends StatefulWidget {
  const FileReader({super.key});

  @override
  State<FileReader> createState() => _FileReaderState();
}

class _FileReaderState extends State<FileReader> {
  var name = "saikumar.pdf";
  var readingData = "";
  bool isLoading = false;
  var teluguText = "";
  List<String> languages = [];
  List<String> listOfLanguages = ["Arabic","Bengali","German","Greek","Spanish","Persian","French","Hindi","Indonesian","Italian","Japanese","Korean","Marathi","Sanskrit","Tamil","Telugu","Thai","Urdu"];
  List<String> listOfLanguageCodes = ["ar","bn","de","el","es","fa","fr","hi","id","it","ja","ko","mr","sa","ta","te","th","ur",];
  String? values;
  int index = 0;

  @override
  void initState() {
    super.initState();
    getLanguages();
  }


  Future getFile() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    setState(() {
      name = result!.files.single.name;
    });
    final files = result?.files;
    final path = files?.first.path.toString();
    final file = File(path!);
    var data = await file.readAsBytesSync();
    data.buffer.asUint8List(data.offsetInBytes,data.lengthInBytes);
    PdfDocument document = PdfDocument(inputBytes:data);
    PdfTextExtractor extractor = PdfTextExtractor(document);
    isLoading = true;
    var text = extractor.extractText(startPageIndex: 0,endPageIndex: document.pages.count-1,layoutText: true);
    setState(() {
      readingData = text;
    });
  }

  Future getLanguages() async{
    await FlutterTts().getLanguages.then((value) {
      value.map((e){
        languages.add(e);
      }).toList();
    });
    print(languages);
  }
  Future speak(String text) async {
    await FlutterTts().setLanguage("en-US");
    await FlutterTts().setVolume(0.5);
    await FlutterTts().setPitch(1);
    await FlutterTts().speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("F I L E S  R E A D E R"),centerTitle: true,),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: InkWell(
                  onTap: (){
                    getFile();
                  },
                  child:Container(
                    height: MediaQuery.of(context).size.height/2.5,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border:Border.all(color: Colors.orange,width: 2,strokeAlign: BorderSide.strokeAlignOutside)),
                    child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.image_outlined,color: Colors.orange,size: 70,),
                            Text("Click to upload an pdf")
                          ],
                        )
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("FileName : "),
                  Text(name),
                ],
              ),
             SizedBox(height: 10,),
             Container(
               alignment : Alignment.topLeft,
               child: Text("Data in PDF file",style: TextStyle(fontSize: 20),)),
             SizedBox(height: 10,),
             Container(
               height: 400,
               padding: EdgeInsets.all(15),
               width: double.infinity,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border:Border.all(color: Colors.orange,width: 2,strokeAlign: BorderSide.strokeAlignOutside)),
               child: SingleChildScrollView(child: Text(readingData,style: TextStyle(color: Colors.white,fontSize: 20),)),
             ),
             SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  onPressed: () async{
                    setState(() {
                      print(readingData);
                    });
                    await speak(readingData);
                    await FlutterTts().getLanguages.then((value) => print(value));
                  },
                  child: Text(
                    "Click to Convert into speech",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "sans-serif-condensed-light"),
                  ),
                ),
              ),
             SizedBox(height: 10,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 SizedBox(
                   height: 50,
                   width: 150,
                   child: TextButton(
                     style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.orange,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(40))),
                     onPressed: () async{
                       await speak(readingData);
                       await FlutterTts().getVoices.then((value) => print(value));
                     },
                     child: Text(
                       "Play",
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 16,
                           fontWeight: FontWeight.bold,
                           fontFamily: "sans-serif-condensed-light"),
                     ),
                   ),
                 ),
                 SizedBox(
                   height: 50,
                   width: 150,
                   child: TextButton(
                     style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.orange,
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(40))),
                     onPressed: () async{
                       await FlutterTts().pause();
                     },
                     child: Text(
                       "Pause",
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: 16,
                           fontWeight: FontWeight.bold,
                           fontFamily: "sans-serif-condensed-light"),
                     ),
                   ),
                 )
               ],
             ),
             SizedBox(height: 30,),
             Container(alignment:Alignment.topLeft,child: Text("Language Translator",style: TextStyle(fontSize: 23,color: Colors.white),)),
             SizedBox(height: 20,),
             Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.orange.shade300,borderRadius: BorderRadius.circular(20)),
                width: MediaQuery.of(context).size.width,

                child: DropdownButtonHideUnderline(
                    child: Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      child: DropdownButton<String>(
                        dropdownColor: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        items: listOfLanguages.map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(item,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),)).toList(),
                        onChanged: ((value) => setState(() {
                          values = value;
                          index = listOfLanguages.indexOf(value!);
                        })),
                        value: values,
                        hint: Text("Choose Language",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),),
                    )),
              ),
             SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                    width: 180,
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      onPressed: () async{
                        String language = listOfLanguageCodes[index];
                        final translation = await readingData.translate(
                          from: "auto",
                          to:  '$language'
                        );
                        setState(() {
                          teluguText = translation.text.toString();
                        });

                      },
                      child: values==null ? Text(
                        "Translate to",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "sans-serif-condensed-light"),
                      ) : Text(
                        "Translate to $values",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "sans-serif-condensed-light"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 180,
                    child: TextButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      onPressed: () async{
                        await FlutterTts().setLanguage("te-IN");
                        await FlutterTts().setVolume(0.5);
                        await FlutterTts().setPitch(1);
                        await FlutterTts().speak(teluguText);
                        print(teluguText);
                      },
                      child: values==null ? Text(
                        "Speak in",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "sans-serif-condensed-light"),
                      ) : Text(
                        "Speak in $values",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "sans-serif-condensed-light"),
                      ),
                    ),
                  )
                ],
              ),
             SizedBox(height: 20,),
             Container(
                height: 400,
                padding: EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border:Border.all(color: Colors.orange,width: 2,strokeAlign: BorderSide.strokeAlignOutside)),
                child: SingleChildScrollView(child: Text(teluguText,style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
             SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40))),
                  onPressed: () async{
                    var fileName = name+"_"+"in"+values!+".pdf";
                    final pdfFile = await PdfApi().generateCenteredText(teluguText,fileName);
                  },
                  child: Text(
                    "Click to save data in Pdf file",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: "sans-serif-condensed-light"),
                  ),
                ),
              ),
              SizedBox(height: 50,)

             //Text(readingData,style: TextStyle(color: Colors.white,fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> createPDF() async {


  }
}
