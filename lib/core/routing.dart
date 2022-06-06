import 'package:flutter/material.dart';
import 'package:flutter_base_app/not_found.dart';

class Routing {
  static final Routing _instance = Routing();
  late final Function _pageUpdate;
  Map<String, RoutingRun> pages = {};

  static Routing getInstance() {
    return _instance;
  }

  // ルーティング設定関数
  Routing setRouting(String pageName, Widget pageWidget, Function? middleware) {

    pages[pageName] = RoutingRun(pageWidget, pageName, middleware);
    return Routing.getInstance();
  }

  // ページアップデート処理
  void setPageUpdate(Function method) {
    _pageUpdate = method;
  }

  // ページ遷移処理
  void navigation(String pageName, BuildContext context) {

    if (pages.containsKey(pageName)) { // ページが登録されている場合

      Widget page = pages[pageName]!.run(); // 遷移ページの設定

      Navigator.of(context).push(MaterialPageRoute(builder: (c) {
        return page;
      }));
    } else {
      // ページノットファウンド
      Navigator.of(context).push(MaterialPageRoute(builder: (c) {
        return const NotFound();
      }));
    }
  }

  void back(BuildContext context) {

    Navigator.of(context).pop();
  }
}


// 実際のルーティング実行クラス
class RoutingRun {
  late final Widget _page;
  late final String _pageName;
  late final Function? _middleware;


  RoutingRun(this._page, this._pageName, this._middleware);

  Function? get middleware => _middleware;
  String get pageName => _pageName;
  Widget get page => _page;

  Widget run() {
    return page;
  }
}