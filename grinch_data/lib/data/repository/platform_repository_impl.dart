import 'package:firebase_database/firebase_database.dart'; // ignore: import_of_legacy_library_into_null_safe
import 'package:grinch_data_platform_interface/domain/repository/platform_repository.dart';

class PlatformRepositoryImpl extends PlatformRepository {
  @override
  String platform() {
    return 'mobile';
  }

  @override
  Future<String> version() {
    return FirebaseDatabase.instance
        .reference()
        .child('version')
        .once()
        .then((value) {
      return value.value;
    });
  }
}
