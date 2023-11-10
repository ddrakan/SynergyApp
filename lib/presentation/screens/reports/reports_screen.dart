import 'package:flutter/material.dart';
import 'package:app/presentation/widgets/widgets.dart';

class ReportsScreen extends StatelessWidget {

  static const String name = 'reports_screen';

  const ReportsScreen({super.key});



  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              //  backgroundColor: Colors.white,

              title: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Text('Reportes'),
                  ]
              ),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    print('Click search');
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.star),
                  onPressed: () {
                    print('Click start');
                  },
                ),
              ],

            ),
            drawer: SideMenuReports(scaffoldKey: scaffoldKey),
            body: Container(
              decoration: const BoxDecoration(color: Colors.grey),
            )));
  }
}