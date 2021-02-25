import 'package:firebase/firebase.dart'; // ignore: import_of_legacy_library_into_null_safe
import 'package:grinch_data_platform_interface/domain/repository/platform_repository.dart';

class PlatformRepositoryWeb extends PlatformRepository {
  @override
  String platform() {
    return 'web';
  }

  @override
  Future<String> version() {
    return database().ref('version').once('value').then((value) {
      return value.snapshot.val();
    });
  }
}
