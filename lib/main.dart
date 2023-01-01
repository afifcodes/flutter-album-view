import 'package:flutter/material.dart';
import 'package:flutter_album_view/utils/system_ui.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    systemUi();
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://wp.dailybruin.com/images/2020/09/web.ae_.joji_.review.courtesy.jpg'),
                    fit: BoxFit.cover)),
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 0.4, color: Color(0xff404040))),
                gradient: LinearGradient(
                    stops: [0.75, 1],
                    colors: [Colors.transparent, Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 48, left: 24, right: 24, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(99),
                                color: const Color(0xff404040)),
                            child: const Icon(
                              Icons.arrow_downward,
                              color: Color(0xffe5e5e5),
                              size: 16,
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(99),
                                color: const Color(0xff404040)),
                            child: const Icon(
                              Icons.more_horiz,
                              color: Color(0xffe5e5e5),
                              size: 16,
                            ),
                          )
                        ],
                      )),
                      const Text(
                        'Nectar',
                        style: TextStyle(
                            color: Color(0xffe5e5e5),
                            fontSize: 28,
                            fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        'Joji',
                        style: TextStyle(
                            color: Color(0xffa3a3a3),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color(0xff262626),
                                borderRadius: BorderRadius.circular(6)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.play_arrow,
                                  color: Color(0xffe5e5e5),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Play',
                                  style: TextStyle(
                                      color: Color(0xffe5e5e5),
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          )),
                          const SizedBox(
                            width: 24,
                          ),
                          Expanded(
                              child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color(0xff262626),
                                borderRadius: BorderRadius.circular(6)),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.shuffle,
                                  color: Color(0xffe5e5e5),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Shuffle',
                                  style: TextStyle(
                                      color: Color(0xffe5e5e5),
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ))
                        ],
                      )
                    ]),
              ),
            ),
          ),
          MusicListCard(number: '1', title: 'Ew'),
          MusicListCard(number: '2', title: 'Modus'),
          MusicListCard(number: '3', title: 'Tick Tock'),
          MusicListCard(number: '4', title: 'Daylight', author: 'Joji & Diplo'),
          MusicListCard(number: '5', title: 'Upgrade'),
          MusicListCard(number: '6', title: 'Gimme Love'),
          MusicListCard(number: '7', title: 'Ew'),
          MusicListCard(number: '8', title: 'Modus'),
          MusicListCard(number: '9', title: 'Tick Tock'),
        ],
      ),
    );
  }
}

Widget MusicListCard({number, title, author = ''}) {
  return Container(
    height: 64,
    decoration: const BoxDecoration(
        border:
            Border(bottom: BorderSide(width: 0.4, color: Color(0xff404040)))),
    padding: const EdgeInsets.symmetric(horizontal: 24),
    child: Row(children: [
      Text(
        number,
        style: const TextStyle(
            color: Color(0xffa3a3a3),
            fontWeight: FontWeight.w600,
            fontSize: 16),
      ),
      const SizedBox(
        width: 16,
      ),
      author == ''
          ? Text(
              title,
              style: const TextStyle(
                  color: Color(0xffe5e5e5), fontWeight: FontWeight.w600),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Color(0xffe5e5e5), fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    author,
                    style:
                        const TextStyle(color: Color(0xffa3a3a3), fontSize: 10),
                  )
                ]),
      const SizedBox(
        width: 16,
      ),
      const Spacer(),
      const Icon(
        Icons.more_horiz,
        color: Color(0xffe5e5e5),
        size: 16,
      )
    ]),
  );
}
