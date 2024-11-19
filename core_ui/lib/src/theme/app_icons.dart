part of core_ui;

class AppIcons {

  static const String packageName = kPackageName;

  static const String _basePath = kIconsPath;

  static const String _firebaseKey = '${_basePath}firebase.svg';
  static const AppIcon firebase = AppIcon(_firebaseKey);

  static const String _jsonKey = '${_basePath}json.svg';
  static const AppIcon json = AppIcon(_jsonKey);
}
