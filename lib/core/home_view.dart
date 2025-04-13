import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pet_tinder/core/styles/app_colors.dart';
import 'package:pet_tinder/features/matches/representation/matches_screen.dart';
import 'package:pet_tinder/features/nav_bar/nav_bar_widget.dart';
import 'package:pet_tinder/features/pairsearch/representation/pair_search_screen.dart';
import 'package:pet_tinder/features/profile/representation/profile_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static List<Widget> pages = [
    MatchesScreen(),
    PairSearchScreen(),
    ProfileScreen(),
  ];

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late int activeIndex = 1;

  void changePage(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            HomeView.pages[activeIndex],
            Positioned(
              bottom: 15,
              child: NavBarWidget(
                pagesButtons: [
                  GestureDetector(
                    onTap: () {
                      changePage(0);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 14,
                      ),
                      child: FaIcon(
                        activeIndex == 0
                            ? FontAwesomeIcons.solidHeart
                            : FontAwesomeIcons.heart,
                        size: 32,
                        color: AppColors.adaptiveReversed(context),
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      changePage(1);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 14,
                      ),
                      child: FaIcon(
                        activeIndex == 1 ? FontAwesomeIcons.paw : Icons.pets,
                        size: 32,
                        color: AppColors.adaptiveReversed(context),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      changePage(2);
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 14,
                      ),
                      child: FaIcon(
                        activeIndex == 2 ? Icons.person : Icons.person_outlined,
                        size: 32,
                        color: AppColors.adaptiveReversed(context),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
