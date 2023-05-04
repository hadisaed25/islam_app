import 'package:flutter/material.dart';
import 'package:untitled1/core.dart';
import 'arabic_sura_number.dart';


import 'surah_builder.dart';
import 'constant.dart';


class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // drawer: const MyDrawer(),
        floatingActionButton: FloatingActionButton(backgroundColor: WhiteColor,
          tooltip: 'Go to bookmark',
          child:  Icon(Icons.bookmark,color: Theme.of(context).brightness == Brightness.light
              ? GreenColor// Light theme
              : GC),

          onPressed: () async {
            fabIsClicked = true;
            if (await readBookmark() == true) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SurahBuilder(
                            arabic: quran[0],
                            sura: bookmarkedSura - 1,
                            suraName: arabicName[bookmarkedSura - 1]['name'],
                            ayah: bookmarkedAyah,

                          )));
            }
          },
        ),
        appBar: AppBar(toolbarHeight: 75, shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),

          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              //"القرآن",
              "قرآن كريم",
              style: TextStyle(
                //fontFamily: 'quran',
                fontSize: 35,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    offset: Offset(1, 1),
                    blurRadius: 2.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ],
              ),
            ),
          ),
          backgroundColor: Theme.of(context).brightness == Brightness.light
            ? GreenColor// Light theme
            : null,
        ),
        body: FutureBuilder(
          future: readJson(),
          builder: (
            BuildContext context,
            AsyncSnapshot snapshot,
          ) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Text('Error');
              } else if (snapshot.hasData) {
                return indexCreator(snapshot.data, context);
              } else {
                return const Text('Empty data');
              }
            } else {
              return Text('State: ${snapshot.connectionState}');
            }
          },
        ),
      ),
    );
  }

  Container indexCreator(quran, context) {
    return Container(
      // color: const Color.fromARGB(255, 221, 250, 236),
      child: ListView(
        children: [
          for (int i = 0; i < 114; i++)
            Container(
            
              child: Card(  color: Theme.of(context).brightness == Brightness.light
        ? GreenColor // Light theme
        : null,
                child: TextButton(
                  child: Row(
                    children: [
                      ArabicSuraNumber(i: i),
                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                          ],
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Text(
                        arabicName[i]['name'],
                        style:  TextStyle(
                            fontSize: 30,
                            color:WhiteColor,
                            fontFamily: 'quran',
                            shadows: [
                              Shadow(
                                offset: Offset(.5, .5),
                                blurRadius: 1.0,
                                color: GreenColor,
                              )
                            ]),
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                  onPressed: () {
                    fabIsClicked = false;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SurahBuilder(
                                arabic: quran[0],
                                sura: i,
                                suraName: arabicName[i]['name'],
                                 ayah: 0,
                              )),
                    );
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }


}





