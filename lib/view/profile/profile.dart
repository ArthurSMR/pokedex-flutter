import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'profile_list.dart';
import '../../dao/database.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Perfil"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  FutureBuilder<Object>(
                    future: getProfileImage(),
                    builder: (context, AsyncSnapshot<Object> snapshot) {
                      if (_image != null) {
                        return buildProfileImageButton(
                          image: FileImage(_image),
                        );
                      }
                      if (snapshot.data.toString() == "empty") {
                        return buildProfileIconButton();
                      } else if (snapshot.hasData == false) {
                        return CircularProgressIndicator(
                          backgroundColor: Colors.black,
                        );
                      } else {
                        return buildProfileImageButton(
                          image: NetworkImage(snapshot.data),
                        );
                      }
                    },
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 8),
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            FutureBuilder<String>(
                              future: getLikes(),
                              builder:
                                  (context, AsyncSnapshot<String> snapshot) {
                                if (snapshot.hasData) {
                                  return Text(snapshot.data,
                                      style: TextStyle(fontSize: 16));
                                } else {
                                  return CircularProgressIndicator(
                                    backgroundColor: Colors.black,
                                  );
                                }
                              },
                            ),
                            Text(
                              "Curtidas",
                              style: TextStyle(
                                  color: Color(0xFF6C6C6C), fontSize: 16),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.1),
                        ),
                        FutureBuilder<String>(
                            future: getUsername(),
                            builder: (context, AsyncSnapshot<String> snapshot) {
                              if (snapshot.hasData) {
                                return Text(
                                  "@" + snapshot.data,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                );
                              } else {
                                return CircularProgressIndicator(
                                  backgroundColor: Colors.black,
                                );
                              }
                            })
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.0375),
            ),
            Text(
              "Minha equipe",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Expanded(
              child: PokemonList(),
            ),
          ],
        ),
      ),
    );
  }

  Future setImage() async {
    ImagePicker picker = ImagePicker();
    PickedFile pickedFile;
    try {
      pickedFile = await picker.getImage(source: ImageSource.camera);
    } catch (e) {
      print("O erro na seleção foi: " + e.toString());
    }

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });

    await saveImage(_image);
  }

  Future<String> getProfileImage() async {
    var response = await getFileUrl();
    if (response != "empty") {
      return response;
    }
    return "empty";
  }

  InkWell buildProfileImageButton({ImageProvider image}) {
    return InkWell(
      onTap: () {
        setImage();
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(
            color: Colors.black,
            width: 0.5,
          ),
          image: DecorationImage(
            image: image,
          ),
        ),
      ),
    );
  }

  Container buildProfileIconButton() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(
          color: Colors.black,
          width: 0.5,
        ),
      ),
      child: RawMaterialButton(
        fillColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.add_photo_alternate_rounded,
          color: Colors.white,
        ),
        onPressed: () {
          setImage();
        },
        shape: CircleBorder(),
      ),
    );
  }
}
