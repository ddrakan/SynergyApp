
import 'package:flutter/material.dart' show IconData, Icons;


class MenuOptionsReports{
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuOptionsReports({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon
  });

}

const appMenuOptionsReports = <MenuOptionsReports>[
  MenuOptionsReports(
    title: 'Reporte de Agencias',
    subtitle: 'Realiza el registro de un nuevo Camión',
    link: '/truck_profile',
    icon: Icons.chat_outlined,
  ),

  MenuOptionsReports(
    title: 'Reportes de Viajes',
    subtitle: 'Modifica aspectos técnicos',
    link: '/edita-perfil',
    icon: Icons.map,
  ),

  MenuOptionsReports(
    title: 'Reporte de Remisiones ',
    subtitle: 'Visualiza el estado mecánico del Camión.',
    link: '/new_user',
    icon: Icons.real_estate_agent,
  ),

  MenuOptionsReports(
    title: 'Reporte de Camiones ',
    subtitle: 'Visualiza el estado mecánico del Camión.',
    link: '/new_user',
    icon: Icons.emoji_transportation_sharp,
  ),

  MenuOptionsReports(
    title: 'Reporte de Conductores ',
    subtitle: 'Visualiza el estado mecánico del Camión.',
    link: '/new_user',
    icon: Icons.people_outline,
  ),

  // MenuOptionsTransport(
  //   title: '',
  //   subtitle: 'Configuraciones de Perfil',
  //   link: '/config-perfil',
  //   icon: Icons.settings,
  // ),

  // MenuOptionsReports(
  //   title: 'Dar de baja',
  //   subtitle: 'Inhabilita un Camión.',
  //   link: '/down_user',
  //   icon: Icons.arrow_drop_down,
  // ),

  MenuOptionsReports(
    title: 'Cerrar sesión',
    subtitle: 'Salir de la Aplicación',
    link: '/',
    icon: Icons.logout_outlined,
  ),
];
