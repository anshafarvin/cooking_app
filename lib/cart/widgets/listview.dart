
import 'package:cooking_app/constants/constants.dart';
import 'package:cooking_app/models/listmodel_dummy.dart';
import 'package:flutter/material.dart';

class RecipesList extends StatelessWidget {
  const RecipesList({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Expanded(
            child: ListView.builder(
                itemCount: dummy.length,
                itemBuilder: (context, l) => Column(children: <Widget>[
                  const Divider(
                    height: 15.0,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    tileColor:  Constants.CardColor,
                    leading: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(dummy[l].img),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          dummy[l].name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),

                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white),
                        ),
                      ],
                    ),
                    // onTap: () => Navigator
                    //     .of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return ChatScreen(
                    //       dummy[l].name, dummy[l].avatarUrl);
                    // }
                    // ),
                    // ),
                  )
                  ]))));
    }
}