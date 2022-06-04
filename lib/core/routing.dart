import 'package:flutter/material.dart';

class Routing {
  static final Routing _instance = Routing();
  late final Function _pageUpdate;
  late List _beforePageName = [];
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
  void navigation(String pageName) {

    if (pages.containsKey(pageName)) { // ページが登録されている場合

      _beforePageName.add(pageName);
      Widget page = pages[pageName]!.run(); // 遷移ページの設定
      _pageUpdate(page); // ページの出力
    } else {
      // todo: 404ページの実装
    }
  }

  void back() {
    String beforeName = _beforePageName[ _beforePageName.length - 2];

    if (pages.containsKey(beforeName)) {
      _pageUpdate(pages[beforeName]!.run());
    }
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