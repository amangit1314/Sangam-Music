import 'package:flutter/material.dart';
import 'package:sangam_music/features/auth/view/login/login_screen.dart';
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
  int pageIndex = 0;

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool seen = (prefs.getBool('seen') ?? false);

    if (seen && mounted) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const Onboard()));
    } else {
      await prefs.setBool('seen', true);
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const LogInScreen()));
    }
  }

  void afterFirstLayout(BuildContext context) {
    checkFirstSeen();
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                      pageIndex = index;
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
                      padding: const EdgeInsets.only(right: 6.0),
                      child: buildIndicator(index, context),
                    ),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 28,
                    child: InkWell(
                      onTap: () {
                        if (_pageController.page != demoData.length - 1) {
                          _pageController.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.ease,
                          );
                        } else {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const LogInScreen(),
                            ),
                          );
                        }
                      },
                      child: const Icon(
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

  buildIndicator(int index, BuildContext context) {
    return AnimatedContainer(
      height: pageIndex == index ? 15 : 4,
      width: 4,
      decoration: BoxDecoration(
        color: pageIndex == index
            ? Colors.deepPurpleAccent
            : Colors.deepPurpleAccent.withOpacity(0.2),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      duration: const Duration(milliseconds: 300),
    );
  }
}
