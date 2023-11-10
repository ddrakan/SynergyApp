import 'package:flutter/material.dart';
import 'package:app/presentation/views/logistics/views.dart';

class LogisticsScreen extends StatefulWidget {

  static const String name = 'logistics_screen';

  const LogisticsScreen({super.key});

  @override
  State<LogisticsScreen> createState() => _LogisticsScreenState();
}

class _LogisticsScreenState extends State<LogisticsScreen> {
  final viewRoutes = const <Widget>[

    RemisionesEnPendiente_View(),
    RemisionesAprobadasView(),
    RemisionesEnTransito_View(),

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Remisiones'),
          leading: const Icon(Icons.feed_outlined),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                print('Click search');
              },
            ),
            IconButton(
              icon: const Icon(Icons.event_rounded),
              onPressed: () {
                print('Click fecha');
              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Text('Pendientes'),
              Text('Aprobadas'),
              Text('En transito'),
            ],
          ),
        ),
        body: TabBarView(
            children: viewRoutes,
            ),
        ),
    );
  }
}