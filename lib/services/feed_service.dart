import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/media.dart';

class FeedService {
  final _firestore = FirebaseFirestore.instance.collection("feedViewModel");

  //FeedViewModel add
  Future addFeed(FeedViewModel feed) async {
    //firestore
    await _firestore.add(feed.toJson());
  }

  //FeedViewModel get
  Future<List<FeedViewModel>> getFeeds() async {
    /**
     *   return _firestore.collection("users").doc(userId).get().then((value) {
      var temp = value.data();
      if (temp == null) {
        return null;
      }
      var user = User.fromJson(temp);
      user.id = value.id;
      return user;
    });
     */
    var temp = await _firestore.get();

    var data = temp.docs
        .map(
          (e) => FeedViewModel.fromJson(
            e.data(),
          ),
        )
        .toList();

    return data;
  }

  //FeedViewModel delete
  Future deleteFeed(String id) async {
    await _firestore.doc(id).delete();
  }

  //FeedViewModel update
  Future updateFeed(FeedViewModel feed) async {
    // await _firestore.doc(feed.id).update(feed.toJson());
  }
}
