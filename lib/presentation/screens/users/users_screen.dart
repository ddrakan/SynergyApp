import 'package:app/config/menu/menus.dart';
import 'package:app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/widgets.dart';

class UserScreen extends StatelessWidget {

  static const String name = 'user_screen';

  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      appBar: AppBar(
        title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              Text('Usuarios'),
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
            icon: const Icon(Icons.notifications),
            onPressed: () {
              print('Click start');
            },
          ),
        ],

      ),
      drawer: SideMenuProfile(scaffoldKey: scaffoldKey),
      body: Container(
    decoration: const BoxDecoration(color: Colors.grey),
      ),

        // style:
    );
  }
}

class _UserView extends StatelessWidget {
  const _UserView();

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: appMenuOptionsProfile.length,
        itemBuilder:(context, index) {
          final menuItemProfile = appMenuOptionsProfile[index];

          return _CustomListTile(menuItem: menuItemProfile);
        }
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.menuItem,
  });

  final MenuOptionsProfile menuItem;

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
