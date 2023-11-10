import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:app/config/menu/menus.dart';


class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Synergy App'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: appMenuOptions.length,
        itemBuilder:(context, index) {
          final menuItem = appMenuOptions[index];

          return _CustomListTile(menuItem: menuItem);
        }
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuOptions menuItem;

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
