class Menu {
  String imgPath;
  String name;
  String price;

  Menu({required this.imgPath, required this.name, required this.price});

  static List<Menu> getMenus() {
    List<Menu> menus = [];

    menus.add(Menu(
        imgPath: "assets/images/menu1.webp",
        name: "Tiramisu Coffee Milk",
        price: "Rp 28.000"));

    menus.add(Menu(
        imgPath: "assets/images/menu2.webp",
        name: "Pumpkin Spice Latte",
        price: "Rp 18.000"));

    menus.add(Menu(
        imgPath: "assets/images/menu3.webp",
        name: "Light Cappuccino",
        price: "Rp 20.000"));

    menus.add(Menu(
        imgPath: "assets/images/menu4.webp",
        name: "Choco Creamy Latte",
        price: "Rp 16.000"));

    return menus;
  }
}
