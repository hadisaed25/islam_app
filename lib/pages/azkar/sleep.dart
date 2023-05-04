
// }
import 'package:flutter/material.dart';

import '../../core.dart';

class SleepListViewWithDots extends StatefulWidget {
  @override
  _SleepListViewWithDotsState createState() =>
      _SleepListViewWithDotsState();
}

class _SleepListViewWithDotsState
    extends State<SleepListViewWithDots> {


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
    if (_i7 < 1) {
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
    if (_i10 < 1) {
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
    if (_i14 < 33) {
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
            "اذكار النوم",
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
                              Text(
                                'آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ. لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَّسِينَآ أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَُ',
                                style: TextStyle(fontSize: 25),textAlign: TextAlign.center,
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
                                padding: const EdgeInsets.all(66.0),
                                child: Text(
                                  'بِاسْمِكَ رَبِّـي وَضَعْـتُ جَنْـبي ، وَبِكَ أَرْفَعُـه، فَإِن أَمْسَـكْتَ نَفْسـي فارْحَـمْها ، وَإِنْ أَرْسَلْتَـها فاحْفَظْـها بِمـا تَحْفَـظُ بِه عِبـادَكَ الصّـالِحـين.ُ',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text('$_i7/1',style: TextStyle(fontSize: 20),),
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
                                padding: const EdgeInsets.all(60.0),
                                child: Text(
                                  'اللّهُـمَّ إِنَّـكَ خَلَـقْتَ نَفْسـي وَأَنْـتَ تَوَفّـاهـا لَكَ ممَـاتـها وَمَحْـياها ، إِنْ أَحْيَيْـتَها فاحْفَظْـها ، وَإِنْ أَمَتَّـها فَاغْفِـرْ لَـها . اللّهُـمَّ إِنَّـي أَسْـأَلُـكَ العـافِـيَة',
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
                                padding: const EdgeInsets.all(130.0),
                                child: Text(
                                  'بِاسْـمِكَ اللّهُـمَّ أَمـوتُ وَأَحْـيا',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child:Text('$_i10/1',style: TextStyle(fontSize: 20),),
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
                                  'سُبْحَانَ اللَّهِ\n\nالْحَمْدُ لِلَّهِ\n\nاللَّهُ أَكْبَرُ.ِ',
                                  style: TextStyle(fontSize: 28),textAlign: TextAlign.center,
                                ),
                              ), Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child:Text('$_i14/33',style: TextStyle(fontSize: 20),),
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
// import 'package:flutter/material.dart';
//
// class Evening extends StatefulWidget {
//   const Evening({super.key});
//
//   @override
//   State<Evening> createState() => _EveningState();
// }
//
// class _EveningState extends State<Evening> with TickerProviderStateMixin {
//   late final AnimationController _controller1 = AnimationController(
//     duration: const Duration(seconds: 3),
//     vsync: this,
//   );
//   late final Animation<double> _animation = CurvedAnimation(
//     parent: _controller1,
//     curve: Curves.slowMiddle,
//   );
//   @override
//   void initState() {
//     super.initState();
//     repeatOnce();
//   }
//
//   void repeatOnce() async {
//     await _controller1.reverse();
//     await _controller1.forward();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _controller1.dispose();
//   }
//
//   int _i1 = 0;
//   void _icremen1t() {
//     if (_i1 < 1) {
//       setState(() {
//         _i1++;
//       });
//     }
//   }
//
//   int _i2 = 0;
//   void _icremen2t() {
//     if (_i2 < 3) {
//       setState(() {
//         _i2++;
//       });
//     }
//   }
//
//   int _i3 = 0;
//   void _icremen3t() {
//     if (_i3 < 3) {
//       setState(() {
//         _i3++;
//       });
//     }
//   }
//
//   int _i4 = 0;
//   void _icremen4t() {
//     if (_i4 < 3) {
//       setState(() {
//         _i4++;
//       });
//     }
//   }
//
//   int _i5 = 0;
//   void _icremen5t() {
//     if (_i5 < 1) {
//       setState(() {
//         _i5++;
//       });
//     }
//   }
//
//   int _i6 = 0;
//   void _icremen6t() {
//     if (_i6 < 1) {
//       setState(() {
//         _i6++;
//       });
//     }
//   }
//
//   int _i7 = 0;
//   void _icremen7t() {
//     if (_i7 < 3) {
//       setState(() {
//         _i7++;
//       });
//     }
//   }
//
//   int _i8 = 0;
//   void _icremen8t() {
//     if (_i8 < 4) {
//       setState(() {
//         _i8++;
//       });
//     }
//   }
//
//   int _i9 = 0;
//   void _icremen9t() {
//     if (_i9 < 1) {
//       setState(() {
//         _i9++;
//       });
//     }
//   }
//
//   int _i10 = 0;
//   void _icremen10t() {
//     if (_i10 < 7) {
//       setState(() {
//         _i10++;
//       });
//     }
//   }
//
//   int _i11 = 0;
//   void _icremen11t() {
//     if (_i11 < 3) {
//       setState(() {
//         _i11++;
//       });
//     }
//   }
//
//   int _i12 = 0;
//   void _icremen12t() {
//     if (_i12 < 1) {
//       setState(() {
//         _i12++;
//       });
//     }
//   }
//
//   int _i13 = 0;
//   void _icremen13t() {
//     if (_i13 < 1) {
//       setState(() {
//         _i13++;
//       });
//     }
//   }
//
//   int _i14 = 0;
//   void _icremen14t() {
//     if (_i14 < 3) {
//       setState(() {
//         _i14++;
//       });
//     }
//   }
//
//   int _i15 = 0;
//   void _icremen15t() {
//     if (_i15 < 3) {
//       setState(() {
//         _i15++;
//       });
//     }
//   }
//
//   int _i16 = 0;
//   void _icremen16t() {
//     if (_i16 < 3) {
//       setState(() {
//         _i16++;
//       });
//     }
//   }
//
//   int _i17 = 0;
//   void _icremen17t() {
//     if (_i17 < 1) {
//       setState(() {
//         _i17++;
//       });
//     }
//   }
//
//   int _i18 = 0;
//   void _icremen18t() {
//     if (_i18 < 3) {
//       setState(() {
//         _i18++;
//       });
//     }
//   }
//
//   int _i19 = 0;
//   void _icremen19t() {
//     if (_i19 < 1) {
//       setState(() {
//         _i19++;
//       });
//     }
//   }
//
//   int _i20 = 0;
//   void _icremen20t() {
//     if (_i20 < 1) {
//       setState(() {
//         _i20++;
//       });
//     }
//   }
//
//   int _i21 = 0;
//   void _icremen21t() {
//     if (_i21 < 3) {
//       setState(() {
//         _i21++;
//       });
//     }
//   }
//
//   int _i22 = 0;
//   void _icremen22t() {
//     if (_i22 < 10) {
//       setState(() {
//         _i22++;
//       });
//     }
//   }
//
//   int _i23 = 0;
//   void _icremen23t() {
//     if (_i23 < 3) {
//       setState(() {
//         _i23++;
//       });
//     }
//   }
//
//   int _i24 = 0;
//   void _icremen24t() {
//     if (_i24 < 3) {
//       setState(() {
//         _i24++;
//       });
//     }
//   }
//
//   int _i25 = 0;
//   void _icremen25t() {
//     if (_i25 < 3) {
//       setState(() {
//         _i25++;
//       });
//     }
//   }
//
//   int _i26 = 0;
//   void _icremen26t() {
//     if (_i26 < 3) {
//       setState(() {
//         _i26++;
//       });
//     }
//   }
//
//   int _i27 = 0;
//   void _icremen27t() {
//     if (_i27 < 1) {
//       setState(() {
//         _i27++;
//       });
//     }
//   }
//
//   int _i28 = 0;
//   void _icremen28t() {
//     if (_i28 < 1) {
//       setState(() {
//         _i28++;
//       });
//     }
//   }
//
//   int _i29 = 0;
//   void _icremen29t() {
//     if (_i29 < 100) {
//       setState(() {
//         _i29++;
//       });
//     }
//   }
//
//   int _i30 = 0;
//   void _icremen30t() {
//     if (_i30 < 100) {
//       setState(() {
//         _i30++;
//       });
//     }
//   }
//
//   int _i31 = 0;
//   void _icremen31t() {
//     if (_i31 < 100) {
//       setState(() {
//         _i31++;
//       });
//     }
//   }
//
//   int _index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         appBar: AppBar(
//           actions: [
//             Container(
//                 width: 58,
//                 height: 58,
//                 child: Image.asset('assets/images/beads.png'))
//           ],
//           centerTitle: true,
//           backgroundColor: const Color.fromARGB(49, 255, 188, 2),
//           toolbarHeight: 80,
//           title: SizeTransition(
//             sizeFactor: _animation,
//             child: Text(
//               'أذكارالمساء',
//               style: TextStyle(
//                   fontSize: 40,
//                   fontWeight: FontWeight.w600,
//                   shadows: [Shadow(blurRadius: 7, offset: Offset(2, 2))]),
//             ),
//           ),
//         ),
//         body: Stepper(
//           currentStep: _index,
//           onStepCancel: () {
//             if (_index > 0) {
//               setState(() {
//                 _index -= 1;
//               });
//             }
//           },
//           onStepContinue: () {
//             if (_index <= 29) {
//               setState(() {
//                 _index += 1;
//               });
//             }
//           },
//           onStepTapped: (int index) {
//             setState(() {
//               _index = index;
//             });
//           },
//           steps: <Step>[
//             Step(
//                 title: const Text(
//                   'اية الكرسي',
//                 ),
//                 content: InkWell(
//                   onTap: _icremen1t,
//                   child: const Text(
//                     'اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//                 subtitle: Text('$_i1/1')),
//             Step(
//                 title: Text('سورة الاخلاص'),
//                 content: InkWell(
//                   onTap: _icremen2t,
//                   child: Text(
//                     'قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//                 subtitle: Text('$_i2/3')),
//             Step(
//                 title: Text('سورة الفلق'),
//                 content: InkWell(
//                   onTap: _icremen3t,
//                   child: Text(
//                     'قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ. ',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//                 subtitle: Text('$_i3/3')),
//             Step(
//                 title: Text('سورة الناس'),
//                 content: InkWell(
//                     onTap: _icremen4t,
//                     child: Text(
//                       'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ. ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i4/3')),
//             Step(
//                 title: Text('أَمْسَيْـنا وَأَمْسـى..'),
//                 content: InkWell(
//                     onTap: _icremen5t,
//                     child: Text(
//                       'أَمْسَيْـنا وَأَمْسـى المـلكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذهِ اللَّـيْلَةِ وَخَـيرَ ما بَعْـدَهـا ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذهِ اللَّـيْلةِ وَشَرِّ ما بَعْـدَهـا ، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i5/1')),
//             Step(
//                 title: Text('اللّهـمَّ أَنْتَ رَبِّـي..'),
//                 content: InkWell(
//                     onTap: _icremen6t,
//                     child: Text(
//                       'اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i6/1')),
//             Step(
//                 title: Text('رَضيـتُ بِاللهِ..'),
//                 content: InkWell(
//                     onTap: _icremen7t,
//                     child: Text(
//                       'رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i7/3')),
//             Step(
//                 title: Text(
//                   ' اللّهُـمَّ إِنِّـي أَمسيتُ..',
//                 ), //4
//                 content: InkWell(
//                     onTap: _icremen8t,
//                     child: Text(
//                       'اللّهُـمَّ إِنِّـي أَمسيتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i8/4')),
//             Step(
//                 title: Text(
//                   'اللّهُـمَّ ما أَمسى..',
//                 ), //1
//                 content: InkWell(
//                     onTap: _icremen9t,
//                     child: Text(
//                       'اللّهُـمَّ ما أَمسى بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i9/1')),
//             Step(
//                 title: Text(
//                   'حَسْبِـيَ اللّهُ..',
//                 ), //7
//                 content: InkWell(
//                     onTap: _icremen10t,
//                     child: Text(
//                       'حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i10/7')),
//             Step(
//                 title: Text(
//                   'بِسـمِ اللهِ الذي..',
//                 ),
//                 content: InkWell(
//                     onTap: _icremen11t,
//                     child: Text(
//                       'بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i11/3')),
//             Step(
//                 title: Text(
//                   'اللّهُـمَّ بِكَ أَمْسَـين..',
//                 ),
//                 content: InkWell(
//                     onTap: _icremen12t,
//                     child: Text(
//                       'اللّهُـمَّ بِكَ أَمْسَـينا وَبِكَ أَصْـبَحْنا ، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ النُّـشُور',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i12/1')),
//             Step(
//                 title: Text(
//                   'أَمْسَيْنَا عَلَى فِطْرَةِ..',
//                 ),
//                 content: InkWell(
//                     onTap: _icremen13t,
//                     child: Text(
//                       'أَمْسَيْنَا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i13/1')),
//             Step(
//                 title: Text('سُبْحـانَ اللهِ وَبِحَمْـدِهِ..'),
//                 content: InkWell(
//                     onTap: _icremen14t,
//                     child: Text(
//                       'سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i14/3')),
//             Step(
//                 title: Text('اللّهُـمَّ عافِـني في..'),
//                 content: InkWell(
//                     onTap: _icremen15t,
//                     child: Text(
//                       'اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i15/3')),
//             Step(
//                 title: Text(
//                   'اللّهُـمَّ إِنّـي أَعـوذُ..',
//                 ),
//                 content: InkWell(
//                     onTap: _icremen16t,
//                     child: Text(
//                       'اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i16/3')),
//             Step(
//                 title: Text(
//                   'اللّهُـمَّ إِنِّـي أسْـأَلُـكَ..',
//                 ),
//                 content: InkWell(
//                     onTap: _icremen17t,
//                     child: Text(
//                       'اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي ، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي ، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي ، وَمِن فَوْقـي ، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i17/1')),
//             Step(
//                 title: Text(
//                   'يَا حَيُّ يَا قيُّومُ..',
//                 ),
//                 content: InkWell(
//                     onTap: _icremen18t,
//                     child: Text(
//                       'يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i18/3')),
//             Step(
//                 title: Text('أَمْسَيْنا وَأَمْسَى المُـلكُ..'),
//                 content: InkWell(
//                     onTap: _icremen19t,
//                     child: Text(
//                       'أَمْسَيْنا وَأَمْسَى الْمُلْكُ للهِ رَبِّ الْعَالَمَيْنِ، اللَّهُمَّ إِنَّي أسْأَلُكَ خَيْرَ هَذَه اللَّيْلَةِ فَتْحَهَا ونَصْرَهَا، ونُوْرَهَا وبَرَكَتهَا، وَهُدَاهَا، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فيهِا وَشَرَّ مَا بَعْدَهَا',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i19/1')),
//             Step(
//                 title: Text('اللّهُـمَّ عالِـمَ الغَـيْبِ..'),
//                 content: InkWell(
//                     onTap: _icremen20t,
//                     child: Text(
//                       'اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه ، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت ، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i20/1')),
//             Step(
//                 title: Text('أَعـوذُ بِكَلِمـاتِ اللّهِ..'),
//                 content: InkWell(
//                     onTap: _icremen21t,
//                     child: Text(
//                       'أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i21/3')),
//             Step(
//                 title: Text('اللَّهُمَّ صَلِّ وَسَلِّمْ..'),
//                 content: InkWell(
//                     onTap: _icremen22t,
//                     child: Text(
//                       'اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i22/10')),
//             Step(
//                 title: Text('اللَّهُمَّ إِنَّا نَعُوذُ..'),
//                 content: InkWell(
//                     onTap: _icremen23t,
//                     child: Text(
//                       'اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i23/3')),
//             Step(
//                 title: Text('اللَّهُمَّ إِنِّي أَعُوذُ..'),
//                 content: InkWell(
//                     onTap: _icremen24t,
//                     child: Text(
//                       'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i24/3')),
//             Step(
//                 title: Text('أسْتَغْفِرُ اللهَ العَظِيمَ..'),
//                 content: InkWell(
//                     onTap: _icremen25t,
//                     child: Text(
//                       'أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i25/3')),
//             Step(
//                 title: Text(
//                   'يَا رَبِّ لَكَ الْحَمْدُ..',
//                 ),
//                 content: InkWell(
//                     onTap: _icremen26t,
//                     child: Text(
//                       'يَا رَبِّ , لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ , وَلِعَظِيمِ سُلْطَانِكَ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i26/3')),
//             Step(
//                 title: Text(
//                   'اللَّهُمَّ إِنِّي أَسْأَلُكَ ..',
//                 ),
//                 content: InkWell(
//                     onTap: _icremen27t,
//                     child: Text(
//                       'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلًا',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i27/1')),
//             Step(
//                 title: Text('اللَّهُمَّ أَنْتَ رَبِّي ..'),
//                 content: InkWell(
//                     onTap: _icremen28t,
//                     child: Text(
//                       'اللَّهُمَّ أَنْتَ رَبِّي لا إِلَهَ إِلا أَنْتَ ، عَلَيْكَ تَوَكَّلْتُ ، وَأَنْتَ رَبُّ الْعَرْشِ الْعَظِيمِ , مَا شَاءَ اللَّهُ كَانَ ، وَمَا لَمْ يَشَأْ لَمْ يَكُنْ ، وَلا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ , أَعْلَمُ أَنَّ اللَّهَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، وَأَنَّ اللَّهَ قَدْ أَحَاطَ بِكُلِّ شَيْءٍ عِلْمًا , اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي ، وَمِنْ شَرِّ كُلِّ دَابَّةٍ أَنْتَ آخِذٌ بِنَاصِيَتِهَا ، إِنَّ رَبِّي عَلَى صِرَاطٍ مُسْتَقِيمٍ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i28/1')),
//             Step(
//                 title: Text('لَا إلَه إلّا اللهُ..'),
//                 content: InkWell(
//                     onTap: _icremen29t,
//                     child: Text(
//                       'لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i29/100')),
//             Step(
//                 title: Text('سُبْحـانَ اللهِ..'),
//                 content: InkWell(
//                     onTap: _icremen30t,
//                     child: Text(
//                       'سُبْحـانَ اللهِ وَبِحَمْـدِهِ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i30/100')),
//             Step(
//                 title: Text('أسْتَغْفِرُ اللهَ..'),
//                 content: InkWell(
//                     onTap: _icremen31t,
//                     child: Text(
//                       'أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْهِ ',
//                       style: TextStyle(fontSize: 20),
//                     )),
//                 subtitle: Text('$_i31/100')),
//           ],
//           controlsBuilder: (context, details) {
//             return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     ElevatedButton(
//                       onPressed: details.onStepContinue,
//                       child: const Text("التالى"),
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: Color.fromARGB(138, 195, 164, 77),
//                           shape: const StadiumBorder()),
//                     ),
//                     TextButton(
//                         onPressed: details.onStepCancel,
//                         child: const Text(
//                           "السابق",
//                           style: TextStyle(
//                               color: Color.fromARGB(255, 195, 164, 77)),
//                         ))
//                   ],
//                 ));
//           },
//         ),
//       ),
//     ));
//   }
// }
//
//
// class Moring extends StatefulWidget {
//   const Moring({Key? key}) : super(key: key);
//
//   @override
//   State<Moring> createState() => _MoringState();
// }
//
// class _MoringState extends State<Moring> with TickerProviderStateMixin {
//   late final AnimationController _controller1 = AnimationController(
//     duration: const Duration(seconds: 3),
//     vsync: this,
//   );
//   late final Animation<double> _animation = CurvedAnimation(
//     parent: _controller1,
//     curve: Curves.slowMiddle,
//   );
//   @override
//   void initState() {
//     super.initState();
//     repeatOnce();
//   }
//
//   void repeatOnce() async {
//     await _controller1.reverse();
//     await _controller1.forward();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _controller1.dispose();
//   }
//
//   int _i1 = 0;
//   void _icremen1t() {
//     if (_i1 < 1) {
//       setState(() {
//         _i1++;
//       });
//     }
//   }
//
//   int _i2 = 0;
//   void _icremen2t() {
//     if (_i2 < 3) {
//       setState(() {
//         _i2++;
//       });
//     }
//   }
//
//   int _i3 = 0;
//   void _icremen3t() {
//     if (_i3 < 3) {
//       setState(() {
//         _i3++;
//       });
//     }
//   }
//
//   int _i4 = 0;
//   void _icremen4t() {
//     if (_i4 < 3) {
//       setState(() {
//         _i4++;
//       });
//     }
//   }
//
//   int _i5 = 0;
//   void _icremen5t() {
//     if (_i5 < 1) {
//       setState(() {
//         _i5++;
//       });
//     }
//   }
//
//   int _i6 = 0;
//   void _icremen6t() {
//     if (_i6 < 1) {
//       setState(() {
//         _i6++;
//       });
//     }
//   }
//
//   int _i7 = 0;
//   void _icremen7t() {
//     if (_i7 < 3) {
//       setState(() {
//         _i7++;
//       });
//     }
//   }
//
//   int _i8 = 0;
//   void _icremen8t() {
//     if (_i8 < 4) {
//       setState(() {
//         _i8++;
//       });
//     }
//   }
//
//   int _i9 = 0;
//   void _icremen9t() {
//     if (_i9 < 1) {
//       setState(() {
//         _i9++;
//       });
//     }
//   }
//
//   int _i10 = 0;
//   void _icremen10t() {
//     if (_i10 < 7) {
//       setState(() {
//         _i10++;
//       });
//     }
//   }
//
//   int _i11 = 0;
//   void _icremen11t() {
//     if (_i11 < 3) {
//       setState(() {
//         _i11++;
//       });
//     }
//   }
//
//   int _i12 = 0;
//   void _icremen12t() {
//     if (_i12 < 1) {
//       setState(() {
//         _i12++;
//       });
//     }
//   }
//
//   int _i13 = 0;
//   void _icremen13t() {
//     if (_i13 < 1) {
//       setState(() {
//         _i13++;
//       });
//     }
//   }
//
//   int _i14 = 0;
//   void _icremen14t() {
//     if (_i14 < 3) {
//       setState(() {
//         _i14++;
//       });
//     }
//   }
//
//   int _i15 = 0;
//   void _icremen15t() {
//     if (_i15 < 3) {
//       setState(() {
//         _i15++;
//       });
//     }
//   }
//
//   int _i16 = 0;
//   void _icremen16t() {
//     if (_i16 < 3) {
//       setState(() {
//         _i16++;
//       });
//     }
//   }
//
//   int _i17 = 0;
//   void _icremen17t() {
//     if (_i17 < 1) {
//       setState(() {
//         _i17++;
//       });
//     }
//   }
//
//   int _i18 = 0;
//   void _icremen18t() {
//     if (_i18 < 3) {
//       setState(() {
//         _i18++;
//       });
//     }
//   }
//
//   int _i19 = 0;
//   void _icremen19t() {
//     if (_i19 < 1) {
//       setState(() {
//         _i19++;
//       });
//     }
//   }
//
//   int _i20 = 0;
//   void _icremen20t() {
//     if (_i20 < 1) {
//       setState(() {
//         _i20++;
//       });
//     }
//   }
//
//   int _i21 = 0;
//   void _icremen21t() {
//     if (_i21 < 3) {
//       setState(() {
//         _i21++;
//       });
//     }
//   }
//
//   int _i22 = 0;
//   void _icremen22t() {
//     if (_i22 < 10) {
//       setState(() {
//         _i22++;
//       });
//     }
//   }
//
//   int _i23 = 0;
//   void _icremen23t() {
//     if (_i23 < 3) {
//       setState(() {
//         _i23++;
//       });
//     }
//   }
//
//   int _i24 = 0;
//   void _icremen24t() {
//     if (_i24 < 3) {
//       setState(() {
//         _i24++;
//       });
//     }
//   }
//
//   int _i25 = 0;
//   void _icremen25t() {
//     if (_i25 < 3) {
//       setState(() {
//         _i25++;
//       });
//     }
//   }
//
//   int _i26 = 0;
//   void _icremen26t() {
//     if (_i26 < 3) {
//       setState(() {
//         _i26++;
//       });
//     }
//   }
//
//   int _i27 = 0;
//   void _icremen27t() {
//     if (_i27 < 1) {
//       setState(() {
//         _i27++;
//       });
//     }
//   }
//
//   int _i28 = 0;
//   void _icremen28t() {
//     if (_i28 < 1) {
//       setState(() {
//         _i28++;
//       });
//     }
//   }
//
//   int _i29 = 0;
//   void _icremen29t() {
//     if (_i29 < 100) {
//       setState(() {
//         _i29++;
//       });
//     }
//   }
//
//   int _i30 = 0;
//   void _icremen30t() {
//     if (_i30 < 100) {
//       setState(() {
//         _i30++;
//       });
//     }
//   }
//
//   int _i31 = 0;
//   void _icremen31t() {
//     if (_i31 < 100) {
//       setState(() {
//         _i31++;
//       });
//     }
//   }
//
//   int _index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Directionality(
//           textDirection: TextDirection.rtl,
//           child: Scaffold(
//             appBar: AppBar(
//               actions: [
//                 Container(
//                   width: 58,
//                   height: 58,
//                   child: Image.asset('assets/images/beads.png'),
//                 )
//               ],
//               centerTitle: true,
//               backgroundColor: const Color.fromARGB(49, 255, 188, 2),
//               toolbarHeight: 80,
//               title: SizeTransition(
//                 sizeFactor: _animation,
//                 child: Text(
//                   'أذكار الصباح',
//                   style: TextStyle(
//                       fontSize: 40,
//                       fontWeight: FontWeight.w600,
//                       shadows: [Shadow(blurRadius: 7, offset: Offset(2, 2))]),
//                 ),
//               ),
//             ),
//             body: Stepper(
//               currentStep: _index,
//               onStepCancel: () {
//                 if (_index > 0) {
//                   setState(() {
//                     _index -= 1;
//                   });
//                 }
//               },
//               onStepContinue: () {
//                 if (_index <= 29) {
//                   setState(() {
//                     _index += 1;
//                   });
//                 }
//               },
//               onStepTapped: (int index) {
//                 setState(() {
//                   _index = index;
//                 });
//               },
//               steps: <Step>[
//                 Step(
//                     title: const Text(
//                       'اية الكرسي',
//                     ),
//                     content: InkWell(
//                       onTap: _icremen1t,
//                       child: const Text(
//                         'اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                     subtitle: Text('$_i1/1')),
//                 Step(
//                     title: Text('سورة الاخلاص'),
//                     content: InkWell(
//                       onTap: _icremen2t,
//                       child: Text(
//                         'قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                     subtitle: Text('$_i2/3')),
//                 Step(
//                     title: Text('سورة الفلق'),
//                     content: InkWell(
//                       onTap: _icremen3t,
//                       child: Text(
//                         'قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ. ',
//                         style: TextStyle(fontSize: 20),
//                       ),
//                     ),
//                     subtitle: Text('$_i3/3')),
//                 Step(
//                     title: Text('سورة الناس'),
//                     content: InkWell(
//                         onTap: _icremen4t,
//                         child: Text(
//                           'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ. ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i4/3')),
//                 Step(
//                     title: Text('أَصْـبَحْنا وَأَصْـبَحَ..'),
//                     content: InkWell(
//                         onTap: _icremen5t,
//                         child: Text(
//                           'أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i5/1')),
//                 Step(
//                     title: Text('اللّهـمَّ أَنْتَ رَبِّـي..'),
//                     content: InkWell(
//                         onTap: _icremen6t,
//                         child: Text(
//                           'اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i6/1')),
//                 Step(
//                     title: Text('رَضيـتُ بِاللهِ..'),
//                     content: InkWell(
//                         onTap: _icremen7t,
//                         child: Text(
//                           'رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i7/3')),
//                 Step(
//                     title: Text(
//                       ' اللّهُـمَّ إِنِّـي أَصْبَـحْتُ..',
//                     ), //4
//                     content: InkWell(
//                         onTap: _icremen8t,
//                         child: Text(
//                           'اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i8/4')),
//                 Step(
//                     title: Text(
//                       'اللّهُـمَّ ما أَصْبَـَحَ..',
//                     ), //1
//                     content: InkWell(
//                         onTap: _icremen9t,
//                         child: Text(
//                           'اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i9/1')),
//                 Step(
//                     title: Text(
//                       'حَسْبِـيَ اللّهُ..',
//                     ), //7
//                     content: InkWell(
//                         onTap: _icremen10t,
//                         child: Text(
//                           'حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i10/7')),
//                 Step(
//                     title: Text(
//                       'بِسـمِ اللهِ الذي..',
//                     ),
//                     content: InkWell(
//                         onTap: _icremen11t,
//                         child: Text(
//                           'بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i11/3')),
//                 Step(
//                     title: Text(
//                       'اللّهُـمَّ بِكَ أصْـبَحْنا ..',
//                     ),
//                     content: InkWell(
//                         onTap: _icremen12t,
//                         child: Text(
//                           'اللّهُـمَّ بِكَ أَصْـبَحْنا وَبِكَ أَمْسَـينا ، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ النُّـشُور',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i12/1')),
//                 Step(
//                     title: Text(
//                       'أَصْـبَحْنا عَلَى فِطْرَةِ..',
//                     ),
//                     content: InkWell(
//                         onTap: _icremen13t,
//                         child: Text(
//                           'أَصْـبَحْنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i13/1')),
//                 Step(
//                     title: Text('سُبْحـانَ اللهِ وَبِحَمْـدِهِ..'),
//                     content: InkWell(
//                         onTap: _icremen14t,
//                         child: Text(
//                           'سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i14/3')),
//                 Step(
//                     title: Text('اللّهُـمَّ عافِـني في..'),
//                     content: InkWell(
//                         onTap: _icremen15t,
//                         child: Text(
//                           'اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i15/3')),
//                 Step(
//                     title: Text(
//                       'اللّهُـمَّ إِنّـي أَعـوذُ..',
//                     ),
//                     content: InkWell(
//                         onTap: _icremen16t,
//                         child: Text(
//                           'اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i16/3')),
//                 Step(
//                     title: Text(
//                       'اللّهُـمَّ إِنِّـي أسْـأَلُـكَ..',
//                     ),
//                     content: InkWell(
//                         onTap: _icremen17t,
//                         child: Text(
//                           'اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي ، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي ، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي ، وَمِن فَوْقـي ، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i17/1')),
//                 Step(
//                     title: Text(
//                       'يَا حَيُّ يَا قيُّومُ..',
//                     ),
//                     content: InkWell(
//                         onTap: _icremen18t,
//                         child: Text(
//                           'يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i18/3')),
//                 Step(
//                     title: Text('أَصْبَـحْـنا وَأَصْبَـحْ المُـلكُ..'),
//                     content: InkWell(
//                         onTap: _icremen19t,
//                         child: Text(
//                           'أَصْبَـحْـنا وَأَصْبَـحْ المُـلكُ للهِ رَبِّ العـالَمـين ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ خَـيْرَ هـذا الـيَوْم ، فَـتْحَهُ ، وَنَصْـرَهُ ، وَنـورَهُ وَبَـرَكَتَـهُ ، وَهُـداهُ ، وَأَعـوذُ بِـكَ مِـنْ شَـرِّ ما فـيهِ وَشَـرِّ ما بَعْـدَه',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i19/1')),
//                 Step(
//                     title: Text('اللّهُـمَّ عالِـمَ الغَـيْبِ..'),
//                     content: InkWell(
//                         onTap: _icremen20t,
//                         child: Text(
//                           'اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه ، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت ، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i20/1')),
//                 Step(
//                     title: Text('أَعـوذُ بِكَلِمـاتِ اللّهِ..'),
//                     content: InkWell(
//                         onTap: _icremen21t,
//                         child: Text(
//                           'أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i21/3')),
//                 Step(
//                     title: Text('اللَّهُمَّ صَلِّ وَسَلِّمْ..'),
//                     content: InkWell(
//                         onTap: _icremen22t,
//                         child: Text(
//                           'اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i22/10')),
//                 Step(
//                     title: Text('اللَّهُمَّ إِنَّا نَعُوذُ..'),
//                     content: InkWell(
//                         onTap: _icremen23t,
//                         child: Text(
//                           'اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i23/3')),
//                 Step(
//                     title: Text('اللَّهُمَّ إِنِّي أَعُوذُ..'),
//                     content: InkWell(
//                         onTap: _icremen24t,
//                         child: Text(
//                           'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i24/3')),
//                 Step(
//                     title: Text('أسْتَغْفِرُ اللهَ العَظِيمَ..'),
//                     content: InkWell(
//                         onTap: _icremen25t,
//                         child: Text(
//                           'أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i25/3')),
//                 Step(
//                     title: Text(
//                       'يَا رَبِّ لَكَ الْحَمْدُ..',
//                     ),
//                     content: InkWell(
//                         onTap: _icremen26t,
//                         child: Text(
//                           'يَا رَبِّ , لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ , وَلِعَظِيمِ سُلْطَانِكَ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i26/3')),
//                 Step(
//                     title: Text(
//                       'اللَّهُمَّ إِنِّي أَسْأَلُكَ ..',
//                     ),
//                     content: InkWell(
//                         onTap: _icremen27t,
//                         child: Text(
//                           'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلًا',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i27/1')),
//                 Step(
//                     title: Text('اللَّهُمَّ أَنْتَ رَبِّي ..'),
//                     content: InkWell(
//                         onTap: _icremen28t,
//                         child: Text(
//                           'اللَّهُمَّ أَنْتَ رَبِّي لا إِلَهَ إِلا أَنْتَ ، عَلَيْكَ تَوَكَّلْتُ ، وَأَنْتَ رَبُّ الْعَرْشِ الْعَظِيمِ , مَا شَاءَ اللَّهُ كَانَ ، وَمَا لَمْ يَشَأْ لَمْ يَكُنْ ، وَلا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ , أَعْلَمُ أَنَّ اللَّهَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، وَأَنَّ اللَّهَ قَدْ أَحَاطَ بِكُلِّ شَيْءٍ عِلْمًا , اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي ، وَمِنْ شَرِّ كُلِّ دَابَّةٍ أَنْتَ آخِذٌ بِنَاصِيَتِهَا ، إِنَّ رَبِّي عَلَى صِرَاطٍ مُسْتَقِيمٍ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i28/1')),
//                 Step(
//                     title: Text('لَا إلَه إلّا اللهُ..'),
//                     content: InkWell(
//                         onTap: _icremen29t,
//                         child: Text(
//                           'لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i29/100')),
//                 Step(
//                     title: Text('سُبْحـانَ اللهِ..'),
//                     content: InkWell(
//                         onTap: _icremen30t,
//                         child: Text(
//                           'سُبْحـانَ اللهِ وَبِحَمْـدِهِ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i30/100')),
//                 Step(
//                     title: Text('أسْتَغْفِرُ اللهَ..'),
//                     content: InkWell(
//                         onTap: _icremen31t,
//                         child: Text(
//                           'أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْهِ ',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                     subtitle: Text('$_i31/100')),
//               ],
//               controlsBuilder: (context, details) {
//                 return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Row(
//                       children: [
//                         ElevatedButton(
//                           onPressed: details.onStepContinue,
//                           child: const Text("التالى"),
//                           style: ElevatedButton.styleFrom(
//                               backgroundColor: Color.fromARGB(138, 195, 164, 77),
//                               shape: const StadiumBorder()),
//                         ),
//                         TextButton(
//                             onPressed: details.onStepCancel,
//                             child: const Text(
//                               "السابق",
//                               style: TextStyle(
//                                   color: Color.fromARGB(255, 195, 164, 77)),
//                             ))
//                       ],
//                     ));
//               },
//             ),
//           ),
//         ));
//   }}