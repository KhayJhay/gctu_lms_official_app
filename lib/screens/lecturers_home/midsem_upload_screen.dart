import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gctu_official_app/api/firebase_upload_api.dart';
import 'package:riverpod/riverpod.dart';
import 'package:path/path.dart';
class Midsem_Upload_Screen extends StatefulWidget {
  @override
  _Midsem_Upload_ScreenState createState() => _Midsem_Upload_ScreenState();
}

class _Midsem_Upload_ScreenState extends State<Midsem_Upload_Screen> {
  UploadTask? task;
  File? file;
  int? number;
  String url = "";
  uploadDataToFirebase() async {
    number = Random().nextInt(10);
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    File pick = File(result!.files.single.path.toString());
    var file = pick.readAsBytesSync();
    String name = DateTime.now().millisecondsSinceEpoch.toString();
    var pdfFile = FirebaseStorage.instance.ref().child(name).child("/.pdf");
    UploadTask task = pdfFile.putData(file);
    TaskSnapshot snapshot = await task;
    url = await snapshot.ref.getDownloadURL();
    await FirebaseFirestore.instance.collection("file").doc().set({
      'fileUrl': url,
      'num' : "Assignment" + number.toString(),
    });
  }
  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? basename(file!.path) : 'No File Selected';
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.purpleAccent, Colors.deepPurple],
          end: Alignment.topCenter,
          begin: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: FloatingActionButton(
          onPressed: uploadDataToFirebase,
          child: Icon(Icons.add),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                height: 128,
                margin: EdgeInsets.only(top: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 30,
                      padding: EdgeInsets.only(top: 16, left: 16),
                      child: GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                              size: 36,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: RichText(
                        text:
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "       "
                                  "GCTU",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            TextSpan(
                              text: "\n "
                                  "Upload Midsem to Cloud",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container(
                alignment: Alignment.topLeft,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48),
                    )
                ),
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 32, left: 24, right: 24),
                          child: Row(
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                child: Icon(
                                  Icons.cloud_upload,
                                  size: 60,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Expanded(child: Container(
                                margin: EdgeInsets.only(left: 16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Upload Midsem "
                                        "\nLevel-400"
                                        "\nSecond Semester",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                    SizedBox(height: 5,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(FontAwesomeIcons.star,
                                          size: 15,
                                          color: Colors.deepPurple,
                                        ),
                                        SizedBox(width: 4,),
                                        Text("BCE", style: TextStyle(fontSize: 15,
                                            fontWeight: FontWeight.w600),)
                                      ],
                                    ),
                                  ],
                                ),
                              ))
                            ],
                          ),
                        ),
                        SizedBox(height: 25,),
                        Column(
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 15,
                                          height: 10,
                                          decoration: BoxDecoration(
                                              color: Colors.deepPurple,
                                              borderRadius: BorderRadius
                                                  .horizontal(
                                                right: Radius.circular(5),
                                              )
                                          ),
                                        ),
                                        SizedBox(width: 15,),
                                        Row(
                                          children: [
                                            Text("Upload Midsem to Cloud",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Container(
                          height: 190,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.deepPurple,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: EdgeInsets.only(right: 10, left: 30),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Browse and Upload Files",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Icon(FontAwesomeIcons.infoCircle,
                                    size: 20,
                                    color: Colors.deepPurple,
                                  ),
                                  SizedBox(width: 5,),
                                  Expanded(child: Text(fileName,))
                                ],
                              ),
                              SizedBox(height: 15,),
                              task != null ? buildUploadStatus(task!) : Container(),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    child: Container(
                                        height: 35,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15,),
                                          color: Colors.deepPurple,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Browse file",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white
                                            ),
                                          ),
                                        )
                                    ),
                                    onTap: () {
                                      selecMidSem();
                                    },
                                  ),
                                  GestureDetector(
                                    child: Container(
                                        margin: EdgeInsets.only(right: 8),
                                        height: 35,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            15,),
                                          color: Colors.deepPurple,
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Upload File",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white
                                            ),
                                          ),
                                        )
                                    ),
                                    onTap: () {
                                      uploadMidSem();
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25,),

                      ],
                    ),
                  ),
                ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Future selecMidSem() async {
    final result = await FilePicker.platform.pickFiles(
      allowedExtensions: ['pdf','ppt'],
      allowMultiple: true,
      type: FileType.custom,
    );
    if (result == null) return;

    final path = result.files.single.path;

    setState(() => file = File(path!));
  }
  Future uploadMidSem() async {
    number = Random().nextInt(10);
    if (file == null) return;

    final fileName = basename(file!.path);
    final destination = 'midsem/$fileName';

    task = FirebaseApi.uploadFile(destination, file!);
    setState(() {});

    if (task == null) return;

    final snapshot = await task!.whenComplete(() {});
    url = await snapshot.ref.getDownloadURL();

    await FirebaseFirestore.instance.collection("midsem").doc().set({
      'fileUrl': url,
      'num' : "$fileName" + number.toString(),
    });

    print('Download-Link: $url');
  }


  Widget buildUploadStatus(UploadTask task) => StreamBuilder<TaskSnapshot>(
    stream: task.snapshotEvents,
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        final snap = snapshot.data!;
        final progress = snap.bytesTransferred / snap.totalBytes;
        final percentage = (progress * 100).toStringAsFixed(2);

        return Center(
          child: Text(
            '$percentage %',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );
      } else {
        return Container();
      }
    },
  );

}
