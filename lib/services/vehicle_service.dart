import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fleur/models/vehicle.dart';

final _vehicleRef = FirebaseFirestore.instance.collection("vehicles");
//Vehicle

class VehicleService {
  var cache = <String, Vehicle>{};
  // Add a vehicle to the database
  Future<Vehicle?> addVehicle(Vehicle vehicle) async {
    try {
      var docRef = await _vehicleRef.add(vehicle.toJson());
      vehicle.id = docRef.id;
      print("Vehicle added successfully with id: ${vehicle.id}");
      return vehicle;
    } catch (e) {
      print(e);
      return Future.error(e);
    }
  }

  Future<Vehicle?> getVehicle(String id) async {
    try {
      var docRef = _vehicleRef.doc(id);
      var doc = await docRef.get();
      if (cache.containsKey(id)) {
        return cache[id];
      }
      // Get the vehicle from the database
      // If the vehicle exists, return it
      // Otherwise, return null
      // If the vehicle does not exist, return null
      if (doc.exists) {
        var vehicle = Vehicle.fromJson(doc.data()!);
        // Add the vehicle to the cache
        cache.putIfAbsent(doc.id, () => vehicle);
        return vehicle;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return Future.error(e);
    }
  }
}
