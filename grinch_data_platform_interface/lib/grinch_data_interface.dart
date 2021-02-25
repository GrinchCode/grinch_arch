import 'package:grinch_data_platform_interface/domain/repository/platform_repository.dart';

abstract class GrinchDataInterface {
  static GrinchDataInterface? instance;

  PlatformRepository platformRepository();
}
