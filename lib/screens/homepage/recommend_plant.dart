import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/models/plant_item.dart';
import 'package:plant_app_ui/screens/detail_item/details_screen.dart';
import 'package:plant_app_ui/widget/plant_card.dart';

class RecommendsPlant extends StatelessWidget {
  const RecommendsPlant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<PlantCardItem> recommend_plant = [
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

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < recommend_plant.length; i++)
            PlantCard(
              plantCardItem: recommend_plant[i],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(plantCardItem: recommend_plant[i]))),
            )
        ],
      ),
    );
  }
}
