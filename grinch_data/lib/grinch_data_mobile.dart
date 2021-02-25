import 'package:grinch_data/data/repository/platform_repository_impl.dart';
import 'package:grinch_data_platform_interface/domain/repository/platform_repository.dart';
import 'package:grinch_data_platform_interface/grinch_data_interface.dart';

class GrinchDataMobile extends GrinchDataInterface {
  @override
  PlatformRepository platformRepository() {
    return PlatformRepositoryImpl();
  }
}
