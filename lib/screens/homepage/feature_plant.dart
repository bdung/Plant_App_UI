import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';


class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     scrollDirection: Axis.horizontal,
     child: Row(
       children: [
         FeaturedPlantCard(
           image: "lib/assets/images/bottom_img_1.png",
           press: (){},
         ),
         FeaturedPlantCard(
           image: "lib/assets/images/bottom_img_2.png",
             press: (){},
         ),
         FeaturedPlantCard(
           image: "lib/assets/images/bottom_img_1.png",
             press: (){},
         ),
       ],
     ),
        );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    super.key,
    required this.image, required this.press,
  });
  final String image;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: MediaQuery.sizeOf(context).width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
