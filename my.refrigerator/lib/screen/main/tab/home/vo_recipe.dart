class Recipe {
  final String name;
  final String imagepath;

  Recipe(
      {required this.name, this.imagepath = 'assets/image/hs_icon/memo.png'});
}

List recipeList = [
  Recipe(name: '치즈김치볶음밥'),
  Recipe(name: '알리오 올리오'),
  Recipe(name: '버터간장계란밥'),
  Recipe(name: '날치알치즈김치볶음밥'),
];
