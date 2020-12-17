import 'package:cloud_firestore/cloud_firestore.dart';

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
