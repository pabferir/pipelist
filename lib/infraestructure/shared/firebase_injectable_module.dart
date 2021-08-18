import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:pipelist/infraestructure/shared/firestore_helpers.dart';

abstract class FirebaseInjectableModule {
  // @lazySingleton
  // GoogleSignIn get googleSignIn => GoogleSignIn();
  // @lazySingleton
  // FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
}
