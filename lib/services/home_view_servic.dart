import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fleur/models/home_view_model.dart';

class HomeViewService {
  final _firestore = FirebaseFirestore.instance;

  Future<List<HomeViewModel>> getHomeView() {
    return _firestore.collection("home_view").get().then((value) {
      return value.docs.map((e) => HomeViewModel.fromJson(e.data())).toList();
    });
  }

  Future addHomeView(HomeViewModel homeViewModel) async {
    await _firestore.collection("home_view").add(homeViewModel.toJson());
  }

  Future updateHomeView(HomeViewModel homeViewModel) async {
    _firestore
        .collection("home_view")
        .doc(homeViewModel.id)
        .update(homeViewModel.toJson());
  }

  Future deleteHomeView(HomeViewModel homeViewModel) async {
    _firestore.collection("home_view").doc(homeViewModel.id).delete();
  }
}
