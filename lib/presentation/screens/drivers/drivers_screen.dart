import 'package:flutter/material.dart';
import 'package:app/presentation/widgets/widgets.dart';

class AppBarScreen extends StatelessWidget {

  static const String name = 'drivers_screen';

  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Text('Choferes'),
                  ]
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search_sharp),
                  onPressed: () {
                    print('Click search');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.notifications),
                  onPressed: () {
                    print('Click start');
                  },
                ),
              ],

            ),
            drawer: SideMenuDrivers(scaffoldKey: scaffoldKey),
            body: Container(
              decoration: const BoxDecoration(color: Colors.grey),
              // child: FloatingActionButton.small(
              //
              //   onPressed: () {
              //     // Add your onPressed code here!
              //   },
              //   child: const Icon(Icons.add),
              // ),

            )));
  }
}