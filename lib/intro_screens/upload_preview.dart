import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_ninja/widgets/widgets.dart';

// ignore: must_be_immutable
class UploadPreview extends StatefulWidget {

  File? file;
  UploadPreview({Key? key, this.file}) : super(key: key);

  @override
  State<UploadPreview> createState() => _UploadPreviewState();
}

class _UploadPreviewState extends State<UploadPreview> {
  File? file;
  _UploadPreviewState({this.file});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background_light.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70),
              Container(
                width: 45,
                height: 45,
                margin: const EdgeInsets.only(left: 25.0),
                decoration: BoxDecoration(
                  color: Color(0xffF9A84D).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left,
                    size: 33,
                    color: Color(0xffDA6317),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: BoldText(
                  text: "Upload Your Photo \nProfile",
                  isCentered: false,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: NormalText(
                  text: "This data will be displayed in your \naccount profile for security",
                  isCentered: false,
                ),
              ),
              SizedBox(height: 60),
              Center(
                child: Container(
                  width: 250,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.red,
                  ),
                  child: Stack(
                    children: [
                      file == null
                          ? Container(
                              constraints: BoxConstraints.expand(),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: Image.asset(
                                  "assets/icons/gallery.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          : Container(
                              constraints: BoxConstraints.expand(),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(22),
                                child: Image.file(
                                  file!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                      widget.file == null
                          ? SizedBox.shrink()
                          : Positioned(
                              top: 10,
                              right: 10,
                              child: InkWell(
                                onTap: () {
                                  print("hi there");
                                  setState(() {
                                    file = null;
                                  });
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
