
import 'package:flutter/material.dart';

import 'package:share_plus/share_plus.dart';
import 'package:untitled1/core.dart';

import 'package:url_launcher/url_launcher.dart';


import 'constant.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(

            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/icon.png',
                  height: 80,color: Theme.of(context).brightness == Brightness.dark
                    ? WhiteColor// Light theme
                    : GreenColor,
                ),
            Text('تطبيق '+NameOfApp,style: TextStyle(color: Theme.of(context).brightness == Brightness.light
                ? GreenColor
                : null,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),)

              ],
            ),
          ),
          //
          // ListTile(
          //   leading: const Icon(
          //     Icons.settings,
          //   ),
          //   title: const Text(
          //     'Settings',
          //   ),
          //   onTap: () {
          //     Navigator.pop(context);
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => const Settings()));
          //   },
          // ),
          Flexible(
            child: SizedBox(
              height: double.infinity,
            ),
          ),
           Divider(
            thickness: 1,
          ),Card(

            child: ListTile(
              textColor:  Theme.of(context).brightness == Brightness.light
    ? GreenColor
        : null,
              iconColor:  Theme.of(context).brightness == Brightness.light
                  ? GreenColor// Light theme
                  : null,
              leading: const Icon(
                Icons.info,
                size: 32,
              ),
              title:  Text('عن المطور',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) =>  AboutDialog(
                      applicationIcon: Flexible(child: Image.asset('assets/images/me.png')),
                      applicationName: 'هادي سعيد',
                      // applicationVersion: '1.0.0',
                      children: [SizedBox(height: 20,),
                        Text(
                          'مطور تطبيقات بأستخدام فلاتر',
                          style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.end,
                        )
                      ],
                    ));


              },
            ),
          ),

          Card(
            child: ListTile( textColor:  Theme.of(context).brightness == Brightness.light
                ? GreenColor
                : null,
              iconColor:  Theme.of(context).brightness == Brightness.light
                  ? GreenColor// Light theme
                  : null,
              leading: const Icon(
                Icons.share, size: 32,
              ),
              title: const Text(
                'شارك التطبيق', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
              ),
              onTap: () {
                Share.share('''* تطبيق وذكر*\n
https://github.com/hadisaed25/سوف يكون متاح قريبا علي جوجل بلي ''');
                Navigator.pop(context);
              },
            ),
          ),
          Card(
            child: ListTile( textColor:  Theme.of(context).brightness == Brightness.light
                ? GreenColor
                : null,
              iconColor:  Theme.of(context).brightness == Brightness.light
                  ? GreenColor// Light theme
                  : null,
              leading: const Icon(
                Icons.rate_review, size: 32,
              ),
              title: const Text(
                'تقيم التطبيق', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
              ),
              onTap: () async {
                if (!await launchUrl(quranAppurl,
                    mode: LaunchMode.externalApplication)) {
                  throw 'Could not launch $quranAppurl';
                }
              },
            ),
          ),

        ],
      ),
    );
  }
}

// const Flexible(
// child: SizedBox(
// height: double.infinity,
// ),
// ),
// const Divider(
// thickness: 1,
// ),
