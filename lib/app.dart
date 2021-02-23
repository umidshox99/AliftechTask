// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:easy_localization/easy_localization.dart';

// 🌎 Project imports:
import 'package:cbs_architecture/data/services/root_service.dart';
import 'package:cbs_architecture/data/utils/app_route_util.dart';
import 'package:cbs_architecture/ui/pages/home_page/home_page.dart';
import 'package:cbs_architecture/data/localization/locale_keys.g.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: tr(LocaleKeys.app_name),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      navigatorKey: RootService.navigatorService.key,
      home: HomePage(),
      onGenerateRoute: AppRouteUtil.generateRoute,
    );
  }
}
