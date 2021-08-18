import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:pipelist/domain/shared/errors.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> taskDocument() async {
    return FirebaseFirestore.instance.doc('tasks');
  }

  CollectionReference get taskCollection => collection('tasks');
}

// extension FirestoreX on FirebaseFirestore {
//   Future<DocumentReference> userDocument() async {
//     final userOption = getIt<IAuthFacade>().getSignedInUser();
//     final user = userOption.getOrElse(() => throw NotAuthenticatedError());
//     return FirebaseFirestore.instance
//         .collection('users')
//         .doc(user.id.getOrCrash());
//   }
// }

// extension DocumentReferenceX on DocumentReference {
//   CollectionReference get taskCollection => collection('tasks');
// }
