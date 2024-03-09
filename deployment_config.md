# Personal app

## run on specific flavor -dev 
flutter run --flavor dev -t lib/main_dev.dart

## run on specific flavor -stage
flutter run --flavor stage -t lib/main_stage.dart
## run on specific flavor -prod
flutter run --flavor prod -t lib/main_prod.dart
## build aap specific flavor -prod
flutter build appbundle --release --flavor prod -t lib/main_prod.dart
## prod web release
flutter build web --release --flavor prod -t lib/main_prod.dart

## rename flutter app
rename setAppName --targets ios,android --value "<APP-NAME>"

## rename flutter bundle id
rename setBundleId --targets ios,android --value "<PACKAGE-NAME>"

## json to object 
flutter pub run build_runner build --delete-conflicting-outputs

## important command to create project in firebase 
flutterfire configure \
  --project=fleur-a-new-journey \
  --platforms="ios,android,web" \
  --out=lib/config/firebase_options_prod.dart \  
  --ios-bundle-id=com.fleur.app \
  --android-package-name=com.fleur.app \
  --debug-symbols-ios \
  --overwrite-firebase-options \
  --yes

  ## generate app icons 

  flutter pub run flutter_launcher_icons



