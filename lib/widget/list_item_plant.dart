import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/models/plant_item.dart';
import 'package:plant_app_ui/screens/detail_item/details_screen.dart';
import 'package:plant_app_ui/widget/plant_card.dart';


class ListItemPlant extends StatelessWidget {
  const ListItemPlant({
    super.key,
    required this.plants,
  });

  final List<PlantCardItem> plants;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: GridView.builder(
            itemCount: plants.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: kDefaultPadding / 2,
              mainAxisSpacing: kDefaultPadding / 2,
              childAspectRatio: 0.55,
            ),
            itemBuilder: (context, index) => PlantCard(
                  plantCardItem: plants[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(plantCardItem:  plants[index]))),
                )),
      ),
    );
  }
}
