import 'package:flutter/material.dart';
import 'package:sangam_music/features/auth/view/login/login_screen.dart';
import 'package:sangam_music/features/nav/nav_bar.dart';
import 'package:sangam_music/features/onboard/presentation/indicator.dart';
import 'package:sangam_music/features/onboard/presentation/onboard_content.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/data.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  late PageController _pageController;

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new Onboard()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new LogInScreen()));
    }
  }

  void afterFirstLayout(BuildContext context) {
    checkFirstSeen();
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NavPage()),
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int _pageIndex = 0;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(images[0]),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Flexible(
                child: PageView.builder(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: demoData.length,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (_, index) {
                    return OnboardContent(
                      lottieAsset: demoData[index].lottieAsset,
                      text: demoData[index].text,
                      description: demoData[index].description,
                    );
                  },
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    demoData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: Indicator(isActive: index == _pageIndex),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        // _pageController.nextPage(
                        //   duration: const Duration(milliseconds: 200),
                        //   curve: Curves.ease,
                        // );
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => LogInPage()),
                        // );
                      },
                      style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
