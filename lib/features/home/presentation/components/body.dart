import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sangam/features/home/data/data.dart';
import 'package:sangam/features/profile/presentation/profile_page.dart';

import 'grid_view_item.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: double.maxFinite,
        width: double.infinity,
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Good afternoon',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ProfilePage();
                                  }));
                                },
                                icon: FaIcon(FontAwesomeIcons.bell,
                                    color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return ProfilePage();
                                      },
                                    ),
                                  );
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.clockRotateLeft,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return ProfilePage();
                                      },
                                    ),
                                  );
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.gear,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Center(
                  child: GridView(
                    padding: const EdgeInsets.all(2),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    children: [
                      GridViewItem(text: 'String', imgUrl: songs[0]),
                      GridViewItem(text: 'To', imgUrl: songs[1]),
                      GridViewItem(text: 'Show', imgUrl: songs[2]),
                      GridViewItem(text: 'Something', imgUrl: songs[3]),
                      GridViewItem(text: 'To', imgUrl: songs[4]),
                      GridViewItem(text: 'You', imgUrl: songs[0]),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String? text;
  final String? img;
  const GridItem({
    Key? key,
    this.text = 'String is expanded',
    this.img =
        'https://media.comicbook.com/2021/03/boruto-naruto-hokage-anime-1260549.jpeg?auto=webp',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.3),
      ),
      child: ListTile(
        leading: Image.network(img.toString()),
        title: Text(text.toString(), overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
