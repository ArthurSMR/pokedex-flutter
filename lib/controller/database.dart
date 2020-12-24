import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

CollectionReference loginCollections =
    FirebaseFirestore.instance.collection("login");

Future<bool> registerUser(
    String user, String password, String email, String uid) async {
  try {
    await loginCollections
        .doc(uid)
        .set({"email": email, "password": password, "username": user});
    return Future.value(true);
  } catch (e) {
    return Future.value(false);
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
