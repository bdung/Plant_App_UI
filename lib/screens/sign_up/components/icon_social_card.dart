import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_app_ui/constants.dart';


class IconSignInCard extends StatelessWidget {
  const IconSignInCard({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.sizeOf(context).width * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: MediaQuery.sizeOf(context).height * 0.07,
      width: MediaQuery.sizeOf(context).height * 0.07,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: kTextColor.withOpacity(0.32)),
      ),
      child: FaIcon(
        icon,
        color: kPrimaryColor,
      ),
    );
  }
}
