import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);

final authStateChangeProvider = StreamProvider<User?>((ref) {
  return ref.watch(firebaseAuthProvider).authStateChanges();
});

// final storageProvider = Provider<StorageService?>((ref) {
//   final auth = ref.watch(authStateChangeProvider);
//   String? uid = auth.asData?.value?.uid;
//   if (uid != null) {
//     return StorageService(uid: uid);
//   }
//   return null;
// });

final imagePickerProvider = StateProvider<XFile?>((_)=>null);
