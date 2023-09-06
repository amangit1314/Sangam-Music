// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sangam_music/features/home/presentation/home_page.dart';
import 'package:sangam_music/features/library/library_screen.dart';
import 'package:sangam_music/features/search/presentation/search_page.dart';

import '../../core/utils/theme/colors.dart';
import '../home/data/data.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _currentIndex = 0;

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget miniPlayer() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 56,
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: SangamMusicDefaultColors.popColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
        child: Row(
          children: [
            Container(
              height: 46,
              width: 46,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(songs[0]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Song name',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 12, fontWeight: FontWeight.bold, color: SangamMusicDefaultColors.lightHeadingColor),
                  ),
                  Text(
                    'Artist name',
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 10),
                  ),
                ],
              ),
            ),
            Spacer(),
            IconButton(
              icon: const Icon(Icons.favorite_border_outlined, size: 24),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.play_circle_fill_outlined, size: 30),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      const HomePage(),
      const SearchPage(),
      const LibraryScreen(),
    ];

    return Scaffold(
      extendBody: true,
      body: _pages[_currentIndex],
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: SangamMusicDefaultColors.popColor,
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => const SearchPage(),
      //       ),
      //     );
      //   },
      //   child: const FaIcon(
      //     FontAwesomeIcons.magnifyingGlass,
      //     size: 16,
      //   ),
      // ),
      bottomNavigationBar: Material(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            miniPlayer(),
            BottomNavigationBar(
              backgroundColor: Theme.of(context).canvasColor,
              currentIndex: _currentIndex,
              elevation: 1,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: SangamMusicDefaultColors.popColor,
              unselectedItemColor: SangamMusicDefaultColors.popColor.withOpacity(.3),
              items: const [
                BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.music,
                    size: 18,
                  ),
                  label: 'Music',
                ),
                BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 18,
                  ),
                  label: 'Library',
                ),
                BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.layerGroup,
                    size: 18,
                  ),
                  label: 'Library',
                ),
              ],
              onTap: onTap,
            ),
          ],
        ),
      ),
    );
  }
}
