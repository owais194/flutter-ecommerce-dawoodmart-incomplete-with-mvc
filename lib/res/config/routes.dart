import 'package:dawoodmart/view/screens/main_screen.dart';
import 'package:flutter/material.dart';


class Routes {
  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      '/': (_) => MainPage(),
      // '/detail': (_) => ProductDetailPage()
    };
  }
}
