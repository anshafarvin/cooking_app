import 'package:cooking_app/svg_page_provider/svg_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart/cartscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          //provider for save page
          ChangeNotifierProvider<SavePageProvider>(
            create: (context) => SavePageProvider(),
          ),

          //provider for searchpage
          // ChangeNotifierProvider<SearchIngredientProvdier>(
          //   create: (context) => SearchIngredientProvdier(),
          // ),
        ],
        child:  const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: CartScreen(),
            ),
        );
    }
}