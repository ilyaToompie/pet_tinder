import 'package:flutter/material.dart';
import 'package:pet_tinder/core/styles/app_colors.dart';

class NavBarWidget extends StatelessWidget {
  final List<Widget> pagesButtons;

  NavBarWidget({super.key, required this.pagesButtons});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.adaptive(context),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Row(children: pagesButtons),
      ),
    );
  }
}
