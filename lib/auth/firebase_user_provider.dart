import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NftaiFirebaseUser {
  NftaiFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

NftaiFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NftaiFirebaseUser> nftaiFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<NftaiFirebaseUser>((user) => currentUser = NftaiFirebaseUser(user));
