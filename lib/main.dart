import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'config/firebase_options_prod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


image_paths = [
    "alfa-romeo.png",
    "aro-png.png",
    "aston-martin.png",
    "audi.png",
    "avia.png",
    "bentley.png",
    "bmw.png",
    "bristol-png.png",
    "bugatti.png",
    "buick.png",
    "cadillac.png",
    "chatenet-png.png",
    "chevrolet.png",
    "chrysler.png",
    "citroen.png",
    "cupra.png",
    "dacia.png",
    "daewoo-avia.png",
    "daewoo-png.png",
    "daf.png",
    "daihatsu.png",
    "datsun.png",
    "dodge.png",
    "ferrari.png",
    "fiat.png",
    "ford.png",
    "gordon.png",
    "great-wall.png",
    "gumpert-png.png",
    "holden.png",
    "honda.png",
    "hummer.png",
    "hyundai.png",
    "infiniti.png",
    "invicta-png.png",
    "isuzu.png",
    "iveco.png",
    "jaguar.png",
    "jeep.png",
    "kaipan-png.png",
    "kia.png",
    "knaus-png.png",
    "koenigsegg.png",
    "lada-png.png",
    "lamborghini.png",
    "lancia.png",
    "land rover.png",
    "lexus.png",
    "liaz.png",
    "lincoln.png",
    "magma.png",
    "mahindra.png",
    "man.png",
    "maserati.png",
    "matra.png",
    "mazda-png.png",
]
