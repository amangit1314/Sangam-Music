import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sangam/src/functionalities/json/songs_json.dart';
import 'package:sangam/src/ui/pages/music/album_page.dart';
import 'package:sangam/src/ui/pages/home/settings.dart';

class GetBody extends StatefulWidget {
  @override
  _GetBodyState createState() => _GetBodyState();
}

class _GetBodyState extends State<GetBody> {
  int activeMenu1 = 0;
  int activeMenu2 = 2;

  static const Color primary = Color.fromRGBO(18, 22, 64, 1.0);
  static const Color grey = Color(0xFF5f5f5f);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            // Color(0xFFFF007F),
            // Color(0xFF651fff),
            Color.fromRGBO(18, 22, 64, 1.0),
            Color.fromRGBO(18, 22, 64, 1.0),
          ],
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 7.0, top: 7),
              decoration: BoxDecoration(
                color: Color.fromRGBO(18, 22, 64, 1.0),
              ),
              child: Row(
                children: [
                  Text(
                    'Good afternoon',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontFamily: 'Comforta',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 111,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Settings();
                          },
                        ),
                      );
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/outlined_settings.svg',
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                    children: List.generate(song_type_1.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          activeMenu1 = index;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            song_type_1[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: activeMenu1 == index ? primary : grey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          activeMenu1 == index
                              ? Container(
                                  width: 10,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: primary,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  );
                })),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: List.generate(songs.length - 5, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  alignment: Alignment.bottomCenter,
                                  child: AlbumPage(
                                    song: songs[index],
                                  ),
                                  type: PageTransitionType.scale));
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 180,
                              height: 180,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(songs[index]['img']),
                                      fit: BoxFit.cover),
                                  color: primary,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              songs[index]['title'],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 180,
                              child: Text(
                                songs[index]['description'],
                                maxLines: 1,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
