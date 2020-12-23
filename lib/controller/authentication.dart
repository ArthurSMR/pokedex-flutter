import 'package:firebase_auth/firebase_auth.dart';
import 'package:pokebla/controller/database.dart';

FirebaseAuth auth = FirebaseAuth.instance;

Future<bool> signUp(String email, String password, String user) async {
  try {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    bool result =
        await registerUser(user, password, email, userCredential.user.uid);
    if (result) {
      return Future.value(true);
    } else {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      await auth.currentUser.delete();
      return Future.value(false);
    }
  } on Exception catch (e) {
    print(e);
    return Future.value(false);
  }
}

Future<bool> signIn(String email, String password) async {
  try {
    await auth.signInWithEmailAndPassword(email: email, password: password);
    return Future.value(true);
  } on Exception catch (e) {
    print(e);
    return Future.value(false);
  }
}

Future<bool> signOutUser() async {
  await auth.signOut();
  return Future.value(true);
}
