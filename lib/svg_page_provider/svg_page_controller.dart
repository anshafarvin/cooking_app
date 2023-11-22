import 'package:cooking_app/models/svg_page_model/svg_page_cookbook_model.dart';
import 'package:flutter/material.dart';

class SavePageProvider with ChangeNotifier {
  final List<CreateCookBookModel> mySavedRecipes = [
    CreateCookBookModel(index: 0, cookBookName: 'Favorite', recipes: [
      SavedRecipes(
          image: 'assets\images\Rectangle 17 (1).png',
          rating: '4.3',
          recipeName: 'Chicken',
          time: '30m')
    ]),
  ];

  final List<SavedRecipes> savedRecipes = [];

  void createNewCookBook(CreateCookBookModel createCookBookModel) {
    mySavedRecipes.add(createCookBookModel);
    notifyListeners();
  }

  void addNewRecipe(SavedRecipes recipes) {
    savedRecipes.add(recipes);
    notifyListeners();
    }
}