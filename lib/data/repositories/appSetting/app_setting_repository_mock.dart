import './app_setting_repository.dart';
import '../../../model/settings/app_settings.dart';

class AppSettingRepositoryMock implements AppSettingRepository{
  
  AppSettings settings = AppSettings(themeColor: ThemeColor.blue);
  @override
  Future<AppSettings> load() async{
    return settings;
  }

  @override
  Future<void> save(AppSettings appSettings) async{
    settings = appSettings;
  }
}