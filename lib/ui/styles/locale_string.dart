import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        //ENGLISH LANGUAGE
        'en_US': {
          'welcome': 'Welcome To WAVE',
          'home': 'Welcome To Home',
        },
        //sp LANGUAGE
        'es_ES': {
          'welcome': '',
          'home': '',
        },
      };
}
