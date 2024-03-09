import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user.dart';

class UserService {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // create user obj based on firebase user
  Future<User?> getUser(String? userId) async {
    return _firestore.collection("users").doc(userId).get().then((value) {
      var temp = value.data();
      if (temp == null) {
        return null;
      }
      var user = User.fromJson(temp);
      user.id = value.id;
      return user;
    });
  }
  //add user
  Future<void> addUser(User user) async {
    return _firestore.collection("users").doc(user.id).set(user.toJson());
  }
}
