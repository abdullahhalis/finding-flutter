class CategoryModel {
  String imgPath;
  String name;
  CategoryModel({required this.imgPath, required this.name});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        imgPath: 'assets/icons/icon_category_all.webp', name: 'All'));
    categories.add(CategoryModel(
        imgPath: 'assets/icons/icon_category_americano.webp',
        name: 'Americano'));
    categories.add(CategoryModel(
        imgPath: 'assets/icons/icon_category_cappuccino.webp',
        name: 'Cappucino'));
    categories.add(CategoryModel(
        imgPath: 'assets/icons/icon_category_espresso.webp', name: 'Espresso'));
    categories.add(CategoryModel(
        imgPath: 'assets/icons/icon_category_frappe.webp', name: 'Frappe'));
    categories.add(CategoryModel(
        imgPath: 'assets/icons/icon_category_latte.webp', name: 'Latte'));
    categories.add(CategoryModel(
        imgPath: 'assets/icons/icon_category_macchiato.webp',
        name: 'Macchiato'));
    categories.add(CategoryModel(
        imgPath: 'assets/icons/icon_category_mocha.webp', name: 'Mocha'));

    return categories;
  }
}
