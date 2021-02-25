import 'package:grinch_core/domain/model/version.dart';
import 'package:grinch_data/grinch_data.dart';

mixin GetVersionUseCase {
  Future<Version> call();
}

class GetVersion implements GetVersionUseCase {
  final _grinchData = GrinchData.instance;

  @override
  Future<Version> call() async {
    final version = await  _grinchData.platformRepository().version();

    return Version(version);
  }
}
