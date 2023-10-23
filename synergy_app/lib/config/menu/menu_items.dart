
import 'package:flutter/material.dart' show IconData, Icons;


class MenuItem{
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon
  });

}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Usuarios',
    subtitle: 'Gestión de Usuarios.',
    link: '/users',
    icon: Icons.supervisor_account,
  ),

  MenuItem(
    title: 'Conductores',
    subtitle: 'Gestión de Choferes.',
    link: '/drivers',
    icon: Icons.car_crash,
  ),

  MenuItem(
    title: 'Transporte',
    subtitle: 'Gestión del Transporte Pesado.',
    link: '/transport',
    icon: Icons.refresh_outlined,
  ),

  MenuItem(
    title: 'Logística',
    subtitle: 'Gestión de Remisiones',
    link: '/logistics',
    icon: Icons.credit_card_outlined,
  ),

  MenuItem(
    title: 'Geo-Localización',
    subtitle: 'Monitorea los camiones en transito dentro el mapa.',
    link: '/geomap',
    icon: Icons.show_chart_sharp,
  ),

  MenuItem(
    title: 'Reportes',
    subtitle: 'Administración de reportes - Logistica',
    link: '/reports',
    icon: Icons.show_chart_outlined,
  ),

];