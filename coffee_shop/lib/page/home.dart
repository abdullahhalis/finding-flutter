import 'package:coffee_shop/models/category_model.dart';
import 'package:coffee_shop/models/menu_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryModel> categories = [];
  List<Menu> menus = [];

  void _init() {
    categories = CategoryModel.getCategories();
    menus = Menu.getMenus();
  }

  @override
  Widget build(BuildContext context) {
    _init();
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Profile")
        ],
        currentIndex: 0,
      ),
      body: ListView(
        children: [
          banner(),
          categorySection(),
          favoriteMenu(),
          bestSellersMenu()
        ],
      ),
    );
  }

  Column bestSellersMenu() {
    List<Menu> dummyBestMenus = List.from(menus)..shuffle();
    return sectionMenu(
      "Menu Terlaris",
      SizedBox(
        height: 220,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (context, index) {
            return itemMenu(dummyBestMenus[index].imgPath,
                dummyBestMenus[index].name, dummyBestMenus[index].price);
          },
          separatorBuilder: (context, index) => const SizedBox(
            width: 16,
          ),
          itemCount: menus.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  Column favoriteMenu() {
    return sectionMenu(
      "Menu Favorit",
      SizedBox(
        height: 220,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (context, index) {
            return itemMenu(
                menus[index].imgPath, menus[index].name, menus[index].price);
          },
          separatorBuilder: (context, index) => const SizedBox(
            width: 16,
          ),
          itemCount: menus.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }

  SizedBox itemMenu(String imgPath, String name, String price) {
    return SizedBox(
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 140,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage(imgPath),
                  fit: BoxFit.fitWidth,
                ),
              )),
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                    maxLines: 2,
                  ),
                ),
                Text(
                  price,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column sectionMenu(String title, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
          child: Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
          ),
        ),
        child
      ],
    );
  }

  Column categorySection() {
    return sectionMenu(
        "Mau ngopi apa hari ini?",
        SizedBox(
          height: 100,
          child: ListView.separated(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            separatorBuilder: (context, index) => const SizedBox(
              width: 8,
            ),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      categories[index].imgPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(categories[index].name))
                ],
              );
            },
          ),
        ));
  }

  Container banner() {
    return Container(
      height: 160,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/banner.webp"),
              fit: BoxFit.cover)),
      child: const SizedBox(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Align(
            alignment: Alignment.topCenter,
            child: SearchBar(
                leading: Icon(Icons.search), hintText: "Cari kopi pilihanmu"),
          ),
        ),
      ),
    );
  }
}
