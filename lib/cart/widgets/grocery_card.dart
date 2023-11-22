import 'package:cooking_app/constants/constants.dart';
import 'package:cooking_app/svg_page_provider/svg_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecipesMayLikeCard extends StatelessWidget {
  const RecipesMayLikeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var saveProvider = Provider.of<SavePageProvider>(context);
    return InkWell(
      // onTap: () {
      //   Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) =>
      //             DetailsPage(imagepath: 'assets/images/Rectangle 34.png'),
      //       ));
      // },
        child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 160,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueGrey,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/Rectangle 34.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "recipe name",
                        style: TextStyle(
                          fontFamily: Constants.mainFont,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "view recipe",
                        style: TextStyle(
                          fontFamily: Constants.mainFont,
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
            ),
        );
    }
}