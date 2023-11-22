
import 'package:cooking_app/cart/widgets/grocery_card.dart';
import 'package:cooking_app/cart/widgets/listview.dart';
import 'package:cooking_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});


  @override
  Widget build(BuildContext context) {



    return Scaffold(
        backgroundColor: Constants.primaryColor,
        appBar: AppBar(
          backgroundColor: Constants.primaryColor,
          elevation: 0,
          leading: GestureDetector(
            child: const Icon( Icons.arrow_back_ios, color: Colors.white,  ),
            onTap: (){},
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("My Groceries",
                        style: TextStyle(
                          fontFamily: Constants.mainFont,
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("2 recipe ",style: TextStyle(color: Colors.white,fontSize: 13),
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                      ),
                      const Text(" 2 Iteams",style: TextStyle(color: Colors.white,fontSize: 13),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 190,
                    child: GridView.count(
                      //  scrollDirection: Axis.horizontal,
                      //grid container width and height
                      childAspectRatio: 140 / 140,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      children: List.generate(
                        2,
                            (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 0,
                            color: Colors.transparent,
                            shadowColor: Colors.black87,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Constants.CardColor,
                              ),
                              child: const RecipesMayLikeCard(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 1200,
                    child: RecipesList(),
                  ),
                ],
              ),
            ),
            ),
        );
    }
}