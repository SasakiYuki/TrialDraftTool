import 'package:trial_draft_tool/appStoreApplication.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc {
  final AppStoreApplication _application;
  final _isShowLoading = BehaviorSubject<bool>();

  Stream<bool> get isShowLoading => _isShowLoading.stream;

  HomeBloc(this._application) {}

  void dispose() {
    _isShowLoading.close();
  }
}