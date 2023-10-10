import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/models/plant_item.dart';
import 'package:plant_app_ui/screens/detail_item/details_screen.dart';
import 'package:plant_app_ui/screens/homepage/feature_plant.dart';
import 'package:plant_app_ui/screens/homepage/header.dart';
import 'package:plant_app_ui/screens/homepage/recommend_plant.dart';
import 'package:plant_app_ui/screens/more_item/components/category.dart';
import 'package:plant_app_ui/widget/list_item_plant.dart';
import 'package:plant_app_ui/widget/plant_card.dart';
import 'package:plant_app_ui/widget/title_with_more_btn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<PlantCardItem> plants = [
    PlantCardItem(
      title: "Samantha",
      image: "lib/assets/images/image_1.png",
      country: "Rubusan",
      price: 400,
    ),
    PlantCardItem(
      title: "Samantha",
      image: "lib/assets/images/image_2.png",
      country: "Rubusan",
      price: 400,
    ),
    PlantCardItem(
      title: "Samantha",
      image: "lib/assets/images/image_3.png",
      country: "Rubusan",
      price: 400,
    ),
    PlantCardItem(
      title: "Samantha",
      image: "lib/assets/images/image_1.png",
      country: "Rubusan",
      price: 400,
    ),
    PlantCardItem(
      title: "Samantha",
      image: "lib/assets/images/image_2.png",
      country: "Rubusan",
      price: 400,
    ),
    PlantCardItem(
      title: "Samantha",
      image: "lib/assets/images/image_3.png",
      country: "Rubusan",
      price: 400,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: kPrimaryColor,
          leading: IconButton(
            icon: SvgPicture.asset('lib/assets/icons/menu.svg'),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.add_shopping_cart,
                color: kBackgroundColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: kBackgroundColor,
              ),
              onPressed: () {},
            ),
          ]),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Body(),
                TitleWitdMoreButton(title: "Recommended", press: () {}),
                const RecommendsPlant(),
                TitleWitdMoreButton(title: "Featured Plants", press: () {}),
                const FeaturedPlants(),
                TitleWitdMoreButton(title: "Recent History", press: () {}),
                const RecommendsPlant(),
              ])),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: kPrimaryColor,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              color: kTextColor.withOpacity(0.32),
            ),
            label: "Favorites"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_shopping_cart,
              color: kTextColor.withOpacity(0.32),
            ),
            label: "Cart"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: kTextColor.withOpacity(0.32),
            ),
            label: "Profiles"),
      ]),
    );
  }
}
