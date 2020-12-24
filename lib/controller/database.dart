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

Future<bool> removePokemonFromTeam(String pokemonName) async {
  FirebaseAuth auth = FirebaseAuth.instance;

  CollectionReference teamCollection = FirebaseFirestore.instance
      .collection("users/" + auth.currentUser.uid + "/team");

  try {
    print("O pokemon a ser removido sera: " + pokemonName);
    await teamCollection.doc(pokemonName).delete();
    return Future.value(true);
  } catch (e) {
    return Future.value(false);
  }
}
