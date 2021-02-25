abstract class PlatformRepository {
  String platform();

  Future<String> version();
}
