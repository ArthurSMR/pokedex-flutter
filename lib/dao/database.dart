import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<bool> registerUser(
    String user, String password, String email, String uid) async {
  CollectionReference loginCollections =
      FirebaseFirestore.instance.collection("login");
  try {
    await loginCollections
        .doc(uid)
        .set({"email": email, "password": password, "username": user});
    return Future.value(true);
  } catch (e) {
    return Future.value(false);
  }
}

Future<List<String>> getFirebaseTeam() async {
  FirebaseAuth auth = FirebaseAuth.instance;

  CollectionReference teamCollection = FirebaseFirestore.instance
      .collection("users/" + auth.currentUser.uid + "/team");

  List<String> team = List<String>();

  try {
    QuerySnapshot query = await teamCollection.get();

    query.docs.forEach((pokemon) {
      team.add(pokemon.data()["name"]);
    });
    return team;
  } catch (e) {
    print("Deu erro no fetch do firebase" + e);
    return null;
  }
}

Future<bool> addPokemonToTeam(String pokemonName) async {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  CollectionReference teamCollection = FirebaseFirestore.instance
      .collection("users/" + firebaseAuth.currentUser.uid + "/team");

  try {
    await teamCollection.doc(pokemonName).set({"name": pokemonName});
    return Future.value(true);
  } catch (e) {
    return Future.value(false);
  }
}

Future<bool> removePokemonFromTeam(String pokemonName) async {
  FirebaseAuth auth = FirebaseAuth.instance;

  CollectionReference teamCollection = FirebaseFirestore.instance
      .collection("users/" + auth.currentUser.uid + "/team");

  try {
    await teamCollection.doc(pokemonName).delete();
    return Future.value(true);
  } catch (e) {
    return Future.value(false);
  }
}

Future<String> getLikes() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  DocumentReference doc =
      FirebaseFirestore.instance.collection("users").doc(auth.currentUser.uid);
  DocumentSnapshot snapshot = await doc.get();
  var data = snapshot.data();

  try {
    if (data.containsKey("likes")) {
      return data["likes"].toString();
    } else {
      return 0.toString();
    }
  } catch (e) {
    return 0.toString();
  }
}

Future<String> getUsername() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  DocumentReference doc =
      FirebaseFirestore.instance.collection("login").doc(auth.currentUser.uid);
  DocumentSnapshot snapshot = await doc.get();
  var data = snapshot.data();

  return data["username"];
}

Future<void> saveImage(File image) async {
  FirebaseAuth auth = FirebaseAuth.instance;
  DocumentReference documentReference =
      FirebaseFirestore.instance.collection("users").doc(auth.currentUser.uid);
  String imageUrl = await uploadFile(image);
  documentReference.set({"image": imageUrl}, SetOptions(merge: true));
}

Future<String> uploadFile(File image) async {
  FirebaseAuth auth = FirebaseAuth.instance;
  Reference storageReference =
      FirebaseStorage.instance.ref().child('users/${auth.currentUser.uid}/');
  await storageReference.putFile(image);
  return await storageReference.getDownloadURL();
}

Future<String> getFileUrl() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  DocumentReference documentReference =
      FirebaseFirestore.instance.collection("users").doc(auth.currentUser.uid);

  try {
    DocumentSnapshot snapshot = await documentReference.get();
    var data = snapshot.data();
    if (data.containsKey("image")) {
      return data["image"];
    } else {
      return "empty";
    }
  } catch (e) {
    return "empty";
  }
}
