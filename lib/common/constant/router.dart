import 'package:flutter/cupertino.dart';
import 'package:travelapp/features/auth/screens/login_screen.dart';

import '../splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
    SplashScreen.routeName: (context) => SplashScreen(),
    LoginScreen.routeName:(context) => LoginScreen()
};