import 'package:flutter/material.dart';

import '../../core.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Taspeh extends StatefulWidget {
  const Taspeh({super.key});

  @override
  State<Taspeh> createState() => _TaspehState();
}

class _TaspehState extends State<Taspeh> {
  late SharedPreferences _prefs;
  int _Counter = 0;
  void _icrement() {
    setState(() {
      _Counter++;
      _prefs.setInt('counter', _Counter);
    });
  }

  void _cached() {
    setState(() {
      _Counter = 0;
      _prefs.setInt('counter', _Counter);
    });
  }
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      setState(() {
        _prefs = prefs;
        _Counter = _prefs.getInt('counter') ?? 0;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(toolbarHeight: 75, shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),

        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            //"القرآن",
            "سبحة الكترونية",
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
      body: Container(width: double.infinity,
        child: InkWell(
          onTap: _icrement,
          child: Expanded(
            child: Card(
              child: Container(
                  padding: const EdgeInsets.only(top: 92),
                  child: Column(children: [
                    Expanded(
                      child:  Text(
                        'أذكر الله',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).brightness == Brightness.light
                                ? GreenColor.withOpacity(0.70) // Light theme
                                : WhiteColor,
                          shadows: Theme.of(context).brightness == Brightness.light
                              ? [
                            Shadow(

                              blurRadius: 0,
                              offset: Offset(0, 0),
                            )
                          ]
                              : [
                            Shadow(
                              color: BlackColor,
                              blurRadius: 5,
                              offset: Offset(2, 2),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Expanded(
                      child: Text(
                        '$_Counter',
                        style:  TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).brightness == Brightness.light
                                ? GreenColor.withOpacity(0.70) // Light theme
                                : WhiteColor,
                          shadows: Theme.of(context).brightness == Brightness.light
                              ? [
                            Shadow(

                              blurRadius: 0,
                              offset: Offset(0, 0),
                            )
                          ]
                              : [
                            Shadow(
                              color: BlackColor,
                              blurRadius: 5,
                              offset: Offset(2, 2),
                            )
                          ],)
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(right: 245, top: 10),
                        child: IconButton(
                          onPressed: _cached,
                          icon: const Icon(Icons.cached),
                          iconSize: 50,
                          color: Theme.of(context).brightness == Brightness.light
                              ? GreenColor.withOpacity(0.70) // Light theme
                              : WhiteColor,
                          tooltip: 'الرجوع الي الصفر',
                        ),
                      ),
                    )
                  ])),
            ),
          ),
        ),
      ),
    );
  }
}
