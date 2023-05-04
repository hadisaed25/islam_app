
import 'package:flutter/material.dart';
import 'package:untitled1/core.dart';

import '../../main.dart';
import '../Quran/constant.dart';
import '../Quran/index.dart';
import '../Quran/mydrawer.dart';
import '../azkar/evening.dart';
import '../azkar/morning.dart';
import '../azkar/sleep.dart';
import '../taspeh_page/taspeh_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// void moring(BuildContext m) {
//   Navigator.of(m).push(MaterialPageRoute(builder: (mr) => HorizontalListViewWithDots()));
// }


class _HomePageState extends State<HomePage> {
  // ignore: non_constant_identifier_names
  void initState() {
    WidgetsBinding
        .instance
        .addPostFrameCallback(

            (_) async{
          await readJson();
          await getSettings();
        }



    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
            child: Scaffold(drawer: const MyDrawer(),
                 body: Container(
                  margin: const EdgeInsets.all(15),
                  child: Column(

                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [Align(child: Padding(padding: EdgeInsets.only(left: 120),
                        child: Text(NameOfApp,style: TextStyle(color: Theme.of(context).brightness == Brightness.light
                            ? GreenColor// Light theme
                            : null,
                              fontSize: 45,
                              fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),),
                        IconButton(color: Theme.of(context).brightness == Brightness.light
                            ? GreenColor// Light theme
                            : null,
                          iconSize: 40,
                          icon: Icon(Icons.sunny),
                          onPressed: () => MyApp.of(context).changeTheme(ThemeMode.light),
                        ),
                        IconButton(color: Theme.of(context).brightness == Brightness.light
                            ? GreenColor// Light theme
                            : null,
                          iconSize: 40,
                          icon: Icon(Icons.dark_mode),
                          onPressed: () => MyApp.of(context).changeTheme(ThemeMode.dark),
                        ),
                      ],
                    ),Flexible(
                        child: SizedBox(
                          height: double.infinity,
                        ),
                      ),
                      Image.asset('assets/images/background.png',color: Theme.of(context).brightness == Brightness.light
                      ? GreenColor // Light theme
                      : GC),Flexible(
                        child: SizedBox(
                          height: double.infinity,
                        ),
                      ),
                      Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: w3,
                          color: Theme.of(context).brightness == Brightness.light
                              ?GreenColor // Light theme
                              : Grey,
                        ),
                      ),
                        child: InkWell(
                            onTap: ()
                            => Navigator.of(context)
                                .push(_createRoute1()),
              child:Card( color: Theme.of(context).brightness == Brightness.light
                  ? GreenColor.withOpacity(0.40)
                  : null,child: ListTile(trailing: Icon(Icons.arrow_forward_ios,size: 30,),title: Text('اذكار الصباح',style: TX,),),)),
                      ),Flexible(
                   child: SizedBox(
                     height: double.infinity,
                   ),
                 ), Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: w3,
                          color: Theme.of(context).brightness == Brightness.light
                              ?GreenColor // Light theme
                              : Grey,
                        ),
                      ),
                        child: InkWell(
                            onTap: ()
                             => Navigator.of(context)
                                .push(_createRoute2()),
                            child:Card(  color: Theme.of(context).brightness == Brightness.light
                                ? GreenColor.withOpacity(0.40)// Light theme
                                : null,child: ListTile(trailing: Icon(Icons.arrow_forward_ios,size: 30),title: Text('اذكار المساء',style:TX,),),)),
                      ),Flexible(
                        child: SizedBox(
                          height: double.infinity,
                        ),
                      ),Container(decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: w3,
                          color: Theme.of(context).brightness == Brightness.light
                              ?GreenColor // Light theme
                              : Grey,
                        ),
                      ),
                        child: InkWell(
                            onTap: ()
                            => Navigator.of(context)
                            .push(_createRouteS()),

                            child:Card( color: Theme.of(context).brightness == Brightness.light
                                ? GreenColor.withOpacity(0.40)
                                : null,child: ListTile(trailing: Icon(Icons.arrow_forward_ios,size: 30,),title: Text('اذكار النوم',style: TX,),),)),
                      ),Flexible(
                        child: SizedBox(
                          height: double.infinity,
                        ),
                      ),
                      Container(
                        child: Column(children: [Row(
                          children: [
                            Expanded(
                                child: InkWell(
                                    onTap: () => Navigator.of(context)
                                        .push( _createRouteQ()),

                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          width: w3,
                                          color: Theme.of(context).brightness == Brightness.light
                                              ? GreenColor // Light theme
                                              :Grey,
                                        ),
                                      ),
                                      child: Container(
                                        padding: const EdgeInsets.all(20),
                                        child: Expanded(
                                          child:  Text(
                                            'قرآن\n كريم',
                                            textAlign: TextAlign.center,
                                            style: TX
                                          ),
                                        ),
                                        width: W,
                                        height: H,
                                        color: Theme.of(context).brightness == Brightness.light
                                            ? GreenColor// Light theme
                                            : GC,
                                      ),
                                    )
                                )
                            ),
                            SizedBox(width: h),
                            Expanded(
                              child: InkWell(
                                onTap: () => Navigator.of(context)
                                    .push(_createRoute3()),

                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        width: w3,
                                        color: Theme.of(context).brightness == Brightness.light
                                            ?GreenColor // Light theme
                                            : Grey,
                                      ),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.all(20),
                                      child: Expanded(
                                        child:  Text(
                                          'سبحة\nالكترونية',
                                          textAlign: TextAlign.center,
                                          style:TX
                                        ),
                                      ),
                                      width: W,
                                      height: H,
                                      color: Theme.of(context).brightness == Brightness.light
                                          ? GreenColor// Light theme
                                          : GC,
                                    ),
                                  )
                                )
                              ),

                          ],
                        ),SizedBox(height: h,),
                          // Row(
                          //   children: [
                          //     Expanded(
                          //         child: InkWell(
                          //             onTap: () => Navigator.of(context)
                          //                 .push(_createRoute3()),
                          //
                          //             child: Container(
                          //               decoration: BoxDecoration(
                          //                 borderRadius: BorderRadius.circular(10),
                          //                 border: Border.all(
                          //                   width: w3,
                          //                   color: Theme.of(context).brightness == Brightness.light
                          //                       ? GreenColor // Light theme
                          //                       : Grey,
                          //                 ),
                          //               ),
                          //               child: Container(
                          //                 padding: const EdgeInsets.all(20),
                          //                 child: Expanded(
                          //                   child:  Text(
                          //                     'موعد الاذان',
                          //                     textAlign: TextAlign.center,
                          //                     style: TX
                          //                   ),
                          //                 ),
                          //                 width: W,
                          //                 height: H,
                          //                 color: Theme.of(context).brightness == Brightness.light
                          //                     ? GreenColor// Light theme
                          //                     : GC,
                          //               ),
                          //             )
                          //         )
                          //     ),
                          //     SizedBox(width: h,),
                          //
                          //     Expanded(
                          //         child: InkWell(
                          //             onTap: () => Navigator.of(context)
                          //                 .push(_createRoute3()),
                          //
                          //             child: Container(
                          //               decoration: BoxDecoration(
                          //                 borderRadius: BorderRadius.circular(10),
                          //                 border: Border.all(
                          //                   width: w3,
                          //                   color: Theme.of(context).brightness == Brightness.light
                          //                       ? GreenColor // Light theme
                          //                       : Grey,
                          //                 ),
                          //               ),
                          //               child: Container(
                          //                 padding: const EdgeInsets.all(20),
                          //                 child: Expanded(
                          //                   child:  Text(
                          //                     'ابني جنتك',
                          //                     textAlign: TextAlign.center,
                          //                     style:TX
                          //                   ),
                          //                 ),
                          //                 width: W,
                          //                 height: H,
                          //                 color: Theme.of(context).brightness == Brightness.light
                          //                     ? GreenColor// Light theme
                          //                     : GC,
                          //               ),
                          //             )
                          //         )
                          //     ),
                          //   ],
                          // ),

                        ]),
                      )
                    ],
                  ),
                ))));
  }
}

Route _createRoute1() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>  HorizontalListViewWithDots(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => EveningListViewWithDots(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute3() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Taspeh(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
Route _createRouteQ() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const IndexPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}Route _createRouteS() {
   return PageRouteBuilder(
     pageBuilder: (context, animation, secondaryAnimation) =>  SleepListViewWithDots(),
     transitionsBuilder: (context, animation, secondaryAnimation, child) {
       const begin = Offset(0.0, 1.0);
       const end = Offset.zero;
       const curve = Curves.ease;

       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

       return SlideTransition(
         position: animation.drive(tween),
         child: child,
       );
     },
   );
 }