import 'package:firebase/firebase.dart'; // ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:grinch_data_platform_interface/domain/repository/platform_repository.dart';
import 'package:grinch_data_platform_interface/grinch_data_interface.dart';
import 'package:grinch_data_web/repository/platform_repository_web.dart';

class GrinchDataWeb extends GrinchDataInterface {
  static void registerWith(Registrar registrar) {
    GrinchDataInterface.instance = GrinchDataWeb();
  }

  GrinchDataWeb() {
    if (apps.length == 0) {
      initializeApp(
        apiKey: 'AIzaSyAbhmKvJ82Tknk_AwI323GTCBTU71Mr_8Y',
        authDomain: 'grinchcode-dev.firebaseapp.com',
        databaseURL: 'https://grinchcode-dev-default-rtdb.firebaseio.com',
        projectId: 'grinchcode-dev',
        storageBucket: 'grinchcode-dev.appspot.com',
        messagingSenderId: '611467141702',
        appId: '1:611467141702:web:158cec95a24f3c19c2a047',
        measurementId: 'G-BBFMN26N1D',
      );
    }
  }

  @override
  PlatformRepository platformRepository() {
    return PlatformRepositoryWeb();
  }
}
