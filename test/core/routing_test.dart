
import 'package:flutter/cupertino.dart';
import 'package:flutter_base_app/core/routing.dart';
import 'package:flutter_base_app/not_found.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Widget naviCode = const Text("data");

  Routing routing = Routing.getInstance();
  routing.setPageUpdate( (Widget c){
    naviCode = c;
  } );

  routing.setRouting("home", Container(), null);

  test("Routing - navigation", () {
    routing.navigation("home");

    expect(Container, naviCode.runtimeType);
  });

  test("Routing - NotFound", () {
    routing.navigation("not-found");

    expect(NotFound, naviCode.runtimeType);
  });
}