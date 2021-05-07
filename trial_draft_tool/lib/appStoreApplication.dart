import 'package:fluro/fluro.dart';
import 'package:logging/logging.dart';
import 'package:trial_draft_tool/appRoutes.dart';
import 'package:trial_draft_tool/application.dart';
import 'package:trial_draft_tool/utility/log.dart';

class AppStoreApplication implements Application {
  FluroRouter router;

  @override
  void onCreate() async {
    _initLog();
    _initRouter();
    await _initDB();
  }

  @override
  void onTerminate() async {
    // await db close
  }

  Future<void> _initDB() async {}

  void _initRouter() {
    router = new FluroRouter();
    AppRoutes.configureRoutes(router);
  }

  void _initLog() {
    Log.init();

    Log.setLevel(Level.ALL);
  }
}
