import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TelaMaltariaFirebaseUser {
  TelaMaltariaFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TelaMaltariaFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TelaMaltariaFirebaseUser> telaMaltariaFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TelaMaltariaFirebaseUser>(
      (user) {
        currentUser = TelaMaltariaFirebaseUser(user);
        return currentUser!;
      },
    );
