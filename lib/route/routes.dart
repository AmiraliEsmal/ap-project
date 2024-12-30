
import 'package:flutter/cupertino.dart';
import 'package:proj/route/names.dart';
import 'package:proj/screens/main_screen/main_screen.dart';
import 'package:proj/screens/main_screen/product_single_screen.dart';
import 'package:proj/screens/product_list_screen.dart';

import '../screens/welcome_screen.dart';


Map<String, Widget Function(BuildContext)> routes = {
  Screens.root : (context) => WelcomeScreen(),
  Screens.SignupScreen : (context) => MainScreen(),
  Screens.LoginScreen : (context) => MainScreen(),

  Screens.mainScreen : (context) => MainScreen(),
  Screens.productListScreen : (context) => const ProductListScreen(),
  Screens.productSingleScreen : (context) => const ProductSingleScreen(),

};