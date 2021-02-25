import 'package:get/get.dart';
import 'package:grinch_core/domain/use_case/get_version_use_case.dart';

class HomeController extends GetxController {
  static HomeController get find => Get.find();

  final _getVersionUseCase = GetVersion();

  var version = ''.obs;

  @override
  void onInit() {
    _getVersionUseCase.call().then((version) {
      this.version.value = version.version;
    });

    super.onInit();
  }
}