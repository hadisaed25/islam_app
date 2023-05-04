import 'package:flutter/material.dart';
import '../../core.dart';
import 'constant.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(toolbarHeight: 75, shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))),

          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              //"القرآن",
              "اعدادات الخط",
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
        body: SafeArea(
          child:Center (

            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'خط المصحف الوضع الاول',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Slider(activeColor: Theme.of(context).brightness == Brightness.light
                      ? GreenColor // Light theme
                      : WhiteColor,
                           value: arabicFontSize,
                           min: 20,
                           max: 40,
                    onChanged: (value){
                              setState(() {
                                arabicFontSize = value;
                              });
                    },

                  ),

                  Text(
                    "‏ ‏‏ ‏‏‏‏ ‏‏‏‏‏‏ ‏",
                    style: TextStyle(
                        fontFamily: 'quran', fontSize: arabicFontSize),
                    textDirection: TextDirection.rtl,
                  ),

                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Divider(),
                  ),
                  const Text(
                    'خط المصحف الوضع الثاني',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Slider(activeColor: Theme.of(context).brightness == Brightness.light
                      ? GreenColor // Light theme
                      : WhiteColor,
                           value: mushafFontSize,
                           min: 20,
               max: 50,
                   onChanged: (value){
                             setState(() {
                               mushafFontSize=value;
                             });
                   },
                      ),

                  Text(
                    "‏ ‏‏ ‏‏‏‏ ‏‏‏‏‏‏ ‏",
                    style: TextStyle(
                        fontFamily: 'quran', fontSize: mushafFontSize),
                    textDirection: TextDirection.rtl,
                  ),

                
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Theme.of(context).brightness == Brightness.light
                          ? GreenColor // Light theme
                          : GC),
                                  onPressed: (){
                                    setState(() {
                                      arabicFontSize=28;
                                      mushafFontSize=40;
                                    });
                                    saveSettings();
                                  },
                          child:  Text('اعادة')),
                      ElevatedButton( style: ElevatedButton.styleFrom(backgroundColor:Theme.of(context).brightness == Brightness.light
                          ? GreenColor // Light theme
                          : GC),

                            onPressed: (){
                              saveSettings();
                              Navigator.of(context).pop();
                            },
                          child:  Text('حفظ')),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
