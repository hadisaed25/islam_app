
// }
import 'package:flutter/material.dart';

import '../../core.dart';

class HorizontalListViewWithDots extends StatefulWidget {
  @override
  _HorizontalListViewWithDotsState createState() =>
      _HorizontalListViewWithDotsState();
}

class _HorizontalListViewWithDotsState
    extends State<HorizontalListViewWithDots> {
  final List<String> items = List.generate(13, (index) => "Item $index");

  final PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;


  int _i1 = 0;

  void _icremen1t() {
    if (_i1 < 1) {
      setState(() {
        _i1++;
      });
    }
  } int _i2 = 0;
  void _icremen2t() {
    if (_i2 < 3) {
      setState(() {
        _i2++;
      });
    }
  }  int _i3 = 0;
  void _icremen3t() {
    if (_i3 < 1) {
      setState(() {
        _i3++;
      });
    }
  }
  int _i6 = 0;
  void _icremen6t() {
    if (_i6 < 1) {
      setState(() {
        _i6++;
      });
    }
  }

  int _i7 = 0;
  void _icremen7t() {
    if (_i7 < 4) {
      setState(() {
        _i7++;
      });
    }
  }

  int _i8 = 0;
  void _icremen8t() {
    if (_i8 < 1) {
      setState(() {
        _i8++;
      });
    }
  }

  int _i9 = 0;
  void _icremen9t() {
    if (_i9 < 1) {
      setState(() {
        _i9++;
      });
    }
  }

  int _i10 = 0;
  void _icremen10t() {
    if (_i10 < 7) {
      setState(() {
        _i10++;
      });
    }
  }

  int _i11 = 0;
  void _icremen11t() {
    if (_i11 < 1) {
      setState(() {
        _i11++;
      });
    }
  }

  int _i12 = 0;
  void _icremen12t() {
    if (_i12 < 3) {
      setState(() {
        _i12++;
      });
    }
  }

  int _i13 = 0;
  void _icremen13t() {
    if (_i13 < 1) {
      setState(() {
        _i13++;
      });
    }
  }

  int _i14 = 0;
  void _icremen14t() {
    if (_i14 < 10) {
      setState(() {
        _i14++;
      });
    }
  }

  int _i15 = 0;
  void _icremen15t() {
    if (_i15 < 10) {
      setState(() {
        _i15++;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(toolbarHeight: 75, shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),

        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            //"القرآن",
            "اذكار الصباح",
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
        body: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,

                child: PageView.builder(
                  controller: _pageController,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      // return image for first item
                      return Card(
                        child: InkWell( onTap: _icremen1t,
                          child: Column(
                            children: [
                               Padding(
                                 padding: const EdgeInsets.all(15.0),
                                 child: Text(
                                  'اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                              ),
                               ), Padding(
                                 padding: const EdgeInsets.only(top: 20),
                                 child: Text('$_i1/1',style: TextStyle(fontSize: 20),),
                               ),
                            ],
                          ),
                        ),
                      );
                    } else if (index == 1) {
                      // return text for second item
                      // return image for first item
                      return Card(
                        child: InkWell( onTap: _icremen2t,
                          child: ListView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Text(
                                  'قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ\n\nقُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ\n\nقُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسُ',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Center(child: Text('$_i2/3',style: TextStyle(fontSize: 20,),)),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (index == 2) {
                      // return text for second item
                      // return image for first item
                      return Card(
                        child: InkWell( onTap: _icremen3t,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15),
                                child: Text(
                                  'َأصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبُ',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text('$_i3/1',style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (index == 3) {
                      // return text for second item
                      // return image for first item
                      return Card(
                        child: InkWell( onTap: _icremen6t,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(35.0),
                                child: Text(
                                  'اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَُ',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text('$_i6/1',style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (index == 4) {
                      // return text for second item
                      // return image for first item
                      return Card(
                        child: InkWell( onTap: _icremen7t,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: Text(
                                  'اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـكُ',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text('$_i7/4',style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (index == 5) {// return text for second item
                      // return image for first item
                      return Card(
                        child: InkWell( onTap: _icremen8t,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه\nاللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ\nاللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child:Text('$_i8/1',style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      );
                    }else if (index == 6) {
                      // return text for second item
                      // return image for first item
                      return Card(
                        child: InkWell( onTap: _icremen9t,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(80.0),
                                child: Text(
                                  'اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child:Text('$_i9/1',style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (index == 7) {
                      // return text for second item
                      // return image for first item
                      return Card(
                        child: InkWell( onTap: _icremen10t,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(100.0),
                                child: Text(
                                  'حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child:Text('$_i10/7',style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (index == 8) {
                      // return text for second item
                      // return image for first item
                      return Card(
                        child: InkWell( onTap: _icremen11t,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي ، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي ، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي ، وَمِن فَوْقـي ، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child:Text('$_i11/1',style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (index == 9) {
                      // return text for second item
                      // return image for first item
                      return Card(
                        child: InkWell( onTap: _icremen12t,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ\nاللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ\nأَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child:Text('$_i12/3',style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (index == 10) {
                      // return text for second item
                      // return image for first item
                      return Card(
                        child: InkWell( onTap: _icremen13t,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Text(
                                  'اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه ، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت ، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child:Text('$_i13/1',style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (index == 11) {
                      // return text for second item
                      // return image for first item
                      return Card(
                        child: InkWell( onTap: _icremen14t,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(100.0),
                                child: Text(
                                  'لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 20),
                                  child:Text('$_i14/10',style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (index == 12) {
                      // return text for second item
                      // return image for first item
                      return Card(
                        child: InkWell( onTap: _icremen15t,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(120.0),
                                child: Text(
                                  'اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child:Text('$_i15/10',style: TextStyle(fontSize: 20),),
                              ),
                            ],
                          ),
                        ),
                      );
                    }  else {
                      // return default card for other items
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Card(
                          child: Center(
                            child: Text(
                              items[index],
                              style: TextStyle(fontSize: 32),
                            ),
                          ),
                        ),
                      );
                    }
                  },
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                items.length,
                    (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: _currentPage == index ? Colors.grey : GC,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
