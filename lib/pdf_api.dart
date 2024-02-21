import 'dart:io';


import 'package:pdf/widgets.dart';


class PdfApi{
  Future<File> generateCenteredText(String text,String filename) async{
    final pdf = Document();
    pdf.addPage(
      MultiPage(build: (context) => [
        Paragraph(text: text),
      ],
    footer: (context) {
        final text = 'page ${context.pageNumber} of ${context.pagesCount}';
        return Container(
          alignment: Alignment.bottomRight,
          child: Text(text)
        );
    },)
    );

    return saveDocument(name : "$filename",pdf : pdf);
  }

  Future<File> saveDocument({required String name, required Document pdf}) async{
    final bytes = await pdf.save();

    final path = "/storage/emulated/0/Download/$name";
    final file = File(path);
    await file.writeAsBytes(bytes);

    return file;

  }

}