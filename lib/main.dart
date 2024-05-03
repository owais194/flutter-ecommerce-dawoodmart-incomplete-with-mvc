import 'package:dawoodmart/helpers/custom_route.dart';
import 'package:dawoodmart/res/config/routes.dart';
import 'package:dawoodmart/res/themes/main_theme.dart';
import 'package:dawoodmart/view/screens/main_screen.dart';
import 'package:dawoodmart/view/screens/product_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce ',
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoute(),
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name!.contains('detail')) {
          return CustomRoute<bool>(
              builder: (BuildContext context) => ProductDetailPage());
        } else {
          return CustomRoute<bool>(
              builder: (BuildContext context) => MainPage(title: 'hello',));
        }
      },
      initialRoute: "MainPage",
    );
  }
}
