
import 'package:flutter/material.dart' show IconData, Icons;


class MenuOptionsDrivers{
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuOptionsDrivers({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon
  });

}

const appMenuOptionsDrivers = <MenuOptionsDrivers>[
  MenuOptionsDrivers(
    title: 'Perfil Chofer',
    subtitle: 'Ver perfil',
    link: '/perfil',
    icon: Icons.perm_identity_outlined,
  ),

  MenuOptionsDrivers(
    title: 'Editar perfil',
    subtitle: 'Haz cambios en tu perfil',
    link: '/edita-perfil',
    icon: Icons.edit,
  ),

  MenuOptionsDrivers(
    title: 'Dar de baja',
    subtitle: 'Inhabilita un usuario',
    link: '/down_user',
    icon: Icons.arrow_drop_down,
  ),

  MenuOptionsDrivers(
    title: 'Cerrar sesión',
    subtitle: 'Gestión del Transporte Pesado.',
    link: '/',
    icon: Icons.logout_outlined,
  ),
];
