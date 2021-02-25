import 'package:grinch_data/grinch_data_mobile.dart';
import 'package:grinch_data_platform_interface/domain/repository/platform_repository.dart';
import 'package:grinch_data_platform_interface/grinch_data_interface.dart';

class GrinchData {
  static GrinchDataInterface get instance {
    return GrinchDataInterface.instance ?? GrinchDataMobile();
  }

  PlatformRepository get platformRepository {
    return instance.platformRepository();
  }
}