
import 'package:flutter/material.dart' show IconData, Icons;


class MenuOptionsTransport{
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuOptionsTransport({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon
  });

}

const appMenuOptionsTransport = <MenuOptionsTransport>[
  MenuOptionsTransport(
    title: 'Registrar Camión',
    subtitle: 'Realiza el registro de un nuevo Camión',
    link: '/truck_profile',
    icon: Icons.fire_truck_rounded,
  ),

  MenuOptionsTransport(
    title: 'Editar Camión',
    subtitle: 'Modifica aspectos técnicos',
    link: '/edita-perfil',
    icon: Icons.edit,
  ),

  // MenuOptionsTransport(
  //   title: '',
  //   subtitle: 'Configuraciones de Perfil',
  //   link: '/config-perfil',
  //   icon: Icons.settings,
  // ),

  MenuOptionsTransport(
    title: 'Estado Mecánico',
    subtitle: 'Visualiza el estado mecánico del Camión.',
    link: '/new_user',
    icon: Icons.menu_book,
  ),

  MenuOptionsTransport(
    title: 'Dar de baja',
    subtitle: 'Inhabilita un Camión.',
    link: '/down_user',
    icon: Icons.arrow_drop_down,
  ),

  MenuOptionsTransport(
    title: 'Cerrar sesión',
    subtitle: 'Salir de la Aplicación',
    link: '/',
    icon: Icons.logout_outlined,
  ),
];
