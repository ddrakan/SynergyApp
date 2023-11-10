import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/config/menu/menus.dart';


class SideMenuReports extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenuReports({
    super.key,
    required this.scaffoldKey
  });

  @override
  State<SideMenuReports> createState() => _SideMenuReportsState();
}

class _SideMenuReportsState extends State<SideMenuReports> {

  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).viewPadding.top > 35; //Nos permite detectar Notch del disp.

/*
    if ( Platform.isAndroid ) {

      print('Android:  $hasNotch');

    }else{
      print('iOS:  $hasNotch');
    }
*/
     return NavigationDrawer(
       selectedIndex: navDrawerIndex,
       onDestinationSelected: (value) {
         setState(() {
           navDrawerIndex = value;
         });

         final menuItem = appMenuOptionsReports[value];
         context.push( menuItem.link );
         widget.scaffoldKey.currentState?.closeDrawer();

       },

        children: [
           Padding(
              padding: EdgeInsets.fromLTRB(20, hasNotch ? 10 : 15, 20, 10),
              child: const Text('Operaciones')),

          ...appMenuOptionsReports.sublist(0,3).map((item) =>
          NavigationDrawerDestination(
              icon: Icon(item.icon),
              label: Text( item.title ))
          ),
          const Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Divider(),
          ),
          //
          // const Padding(
          //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          //     child: Text('Otros')),

          ...appMenuOptionsReports.sublist(3).map((item) =>
              NavigationDrawerDestination(
                  icon: Icon(item.icon),
                  label: Text( item.title ))
          ),
        ]
    );

  }
}
