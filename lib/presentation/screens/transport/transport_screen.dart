import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/config/menu/menus.dart';

class TransportScreen extends StatelessWidget {

  static const String name = 'transport_screen';

  const TransportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Transporte Pesado')
      ),
      body: const _TruckView(),
    );
  }
}

class _TruckView extends StatelessWidget {
  const _TruckView();

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: appMenuOptionsTransport.length,
        itemBuilder:(context, index) {
          final menuItemProfile = appMenuOptionsTransport[index];

          return _CustomListTile(menuItem: menuItemProfile);
        }
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuOptionsTransport menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon( menuItem.icon, color: colors.primary, ),
      trailing: Icon( Icons.arrow_forward_rounded, color: colors.primary,),
      title: Text(menuItem.title),
      subtitle: Text( menuItem.subtitle ),
      onTap: (){

        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => const ButtonsScreen(),
        //   ),
        // );
        // #navegar a otras pantallas
        // Navigator.pushNamed(context, menuItem.link);
        //Con Go Router:
        // context.pushNamed(ButtonsScreen.name);
        context.push( menuItem.link );
      },
    );
  }
}