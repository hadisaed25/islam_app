import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:untitled1/pages/Quran/settings.dart';

import '../../core.dart';
import 'constant.dart';



class SurahBuilder extends StatefulWidget {

  final sura;
  final arabic;
  final suraName;
  int ayah;

  SurahBuilder(
      {Key? key, this.sura, this.arabic, this.suraName, required this.ayah})
      : super(key: key);

  @override
  _SurahBuilderState createState() => _SurahBuilderState();
}
class _SurahBuilderState extends State<SurahBuilder> {
  bool view = true;
  bool fabIsClicked = false;

  get index => null;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => jumbToAyah());
    super.initState();
  }

  jumbToAyah() {
    if (fabIsClicked) {
      itemScrollController.scrollTo(
          index: widget.ayah,
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOutCubic);
    }
    fabIsClicked = false;
  }

  Row verseBuilder(int index, previousVerses) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                widget.arabic[index + previousVerses]['aya_text'],
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: arabicFontSize,
                  fontFamily: arabicFont,
                  color: Theme.of(context).brightness == Brightness.light
                      ? null// Light theme
                      : WhiteColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                ],
              ),
            ],
          ),
        ),
      ],
    );
  }



  SafeArea SingleSuraBuilder(LenghtOfSura) {
    String fullSura = '';
    int previousVerses = 0;

    if (widget.sura + 1 != 1) {
      for (int i = widget.sura - 1; i >= 0; i--) {
        previousVerses = previousVerses + noOfVerses[i];
      }
    }//

    if (!view)
      for (int i = 0; i < LenghtOfSura; i++) {
        fullSura += (widget.arabic[i + previousVerses]['aya_text']);
      }



    return SafeArea(
      child: Container(

        child: view
            ? ScrollablePositionedList.builder(
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                (index != 0) || (widget.sura == 0) || (widget.sura == 8)
                    ? const Text('')
                    : const RetunBasmala(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: verseBuilder(index, previousVerses),
                ),
              ],
            );
          },
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
          itemCount: LenghtOfSura,
        )
            : ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      widget.sura + 1 != 1 && widget.sura + 1 != 9
                          ? const RetunBasmala()
                          : const Text(''),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          fullSura, //mushaf mode
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: mushafFontSize,
                            fontFamily: arabicFont,
                            color: Theme.of(context).brightness == Brightness.light
                                ? null// Light theme
                                : WhiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }





  @override
  Widget build(BuildContext context) {
    int LengthOfSura = noOfVerses[widget.sura];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(primarySwatch: Colors.yellow),
      home: SafeArea(
        child: Scaffold(floatingActionButton:FloatingActionButton(
          onPressed: () {
            setState(() {
              view = !view;fabIsClicked = true;
            });
          },
          child: Tooltip(
            message: 'Mushaf Mode',
            child: Icon(
              Icons.change_circle,
              size: 40,
              color:Theme.of(context).brightness == Brightness.light
                  ? GreenColor// Light theme
                  : null,
            ),
          ),
          // Add a background color to the floating action button
          backgroundColor:Theme.of(context).brightness == Brightness.light
            ? WhiteColor
            : GC,
          // Add a shape to the floating action button
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(10),
          // ),
          // Add elevation to the floating action button
          elevation: 2,
          // Add a hero tag to the floating action button to avoid a hero animation conflict
          heroTag: 'mushaf_mode_button',
        ),
          backgroundColor: Theme.of(context).brightness == Brightness.light
            ? null // Light theme
            :GC ,
          appBar: AppBar( toolbarHeight: 75, shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),leadingWidth: 100,leading: Row(children: [IconButton(onPressed: (){saveBookMark(widget.sura + 1, index);}, icon: (Icon(Icons.bookmark))), IconButton(icon:Icon(Icons.text_fields),onPressed: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Settings()));
          },)],
          ),
          //   toolbarHeight: 75, shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),actions:[ IconButton(icon:Icon(Icons.text_fields),onPressed: () {
          //   Navigator.pop(context);
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => const Settings()));
          // },),IconButton(onPressed: (){saveBookMark(widget.sura + 1, index);}, icon: (Icon(Icons.bookmark))),],

            title: Align(alignment: Alignment.centerRight,
              child: Text(
                // widget.
                widget.suraName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'quran',
                    shadows: [
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 2.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ]),
              ),
            ),
            backgroundColor:Theme.of(context).brightness == Brightness.light
              ? GreenColor // Light theme
              : GC,
          ),
          body:
          SingleSuraBuilder(LengthOfSura),
        ),
      ),
    );
  }
}
class RetunBasmala extends StatelessWidget {
  const RetunBasmala({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
       Center(
        child: Text(
          'بسم الله الرحمن الرحيم',
          style: TextStyle(
            fontFamily: 'me_quran',
            fontSize: 30,
            color: WhiteColor,
            shadows: Theme.of(context).brightness == Brightness.light
                ? [
              Shadow(
                color: Colors.black,
                blurRadius: 5,
                offset: Offset(0, 0),
              )
            ]
                : [
              Shadow(
                color: Colors.white.withOpacity(0.2),
                blurRadius: 2,
                offset: Offset(0, 0),
              )
            ],
          ),
          textDirection: TextDirection.rtl,
        ),
      ),
    ]);
  }
}
