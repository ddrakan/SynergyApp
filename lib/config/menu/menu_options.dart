
import 'package:flutter/material.dart' show IconData, Icons;


class MenuOptions{
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuOptions({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon
  });

}

const appMenuOptions = <MenuOptions>[
  MenuOptions(
    title: 'Usuarios',
    subtitle: 'Gestión de Usuarios.',
    link: '/users',
    icon: Icons.people_alt,
  ),

  MenuOptions(
    title: 'Conductores',
    subtitle: 'Gestión de Choferes.',
    link: '/drivers',
    icon: Icons.people_outline,
  ),

  MenuOptions(
    title: 'Transporte',
    subtitle: 'Gestión del Transporte Pesado.',
    link: '/transport',
    icon: Icons.local_shipping_outlined,
  ),

  MenuOptions(
    title: 'Logística',
    subtitle: 'Gestión de Remisiones',
    link: '/logistics',
    icon: Icons.pages,
  ),

  MenuOptions(
    title: 'Geo-Localización',
    subtitle: 'Monitorea los camiones en transito dentro el mapa.',
    link: '/geomap',
    icon: Icons.map_sharp,
  ),

  MenuOptions(
    title: 'Reportes',
    subtitle: 'Administración de reportes - Logistica',
    link: '/reports',
    icon: Icons.waterfall_chart_outlined,
  ),

  MenuOptions(
      title: 'Change Mode Dark',
      subtitle: 'DarkMode Aplication',
      link: '/theme-changer',
      icon: Icons.color_lens_sharp
  ),
];