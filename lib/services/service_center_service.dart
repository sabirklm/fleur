//ServiceCenter
import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/service_center.dart';

class ServiceCenterService {
  final _firestore = FirebaseFirestore.instance;

  Future<List<ServiceCenter>> getServiceCenters() async {
    var data = await _firestore.collection('service_centers').get();
    List<ServiceCenter> serviceCenters = [];
    for (var serviceCenter in data.docs) {
      var center = ServiceCenter.fromJson(serviceCenter.data());
      center.id = serviceCenter.id;
      serviceCenters.add(center);
    }
    return serviceCenters;
  }

  Future<void> addServiceCenter(ServiceCenter serviceCenter) async {
    await _firestore.collection('service_centers').add(serviceCenter.toJson());
  }
}
