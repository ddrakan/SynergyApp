
import 'package:flutter/material.dart' show IconData, Icons;


class MenuOptionsProfile{
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuOptionsProfile({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon
  });

}

const appMenuOptionsProfile = <MenuOptionsProfile>[
  MenuOptionsProfile(
    title: 'Perfil',
    subtitle: 'Ver perfil',
    link: '/perfil',
    icon: Icons.perm_identity_outlined,
  ),

  MenuOptionsProfile(
    title: 'Editar perfil',
    subtitle: 'Haz cambios en tu perfil',
    link: '/edita-perfil',
    icon: Icons.edit,
  ),

  MenuOptionsProfile(
    title: 'Configuracion',
    subtitle: 'Configuraciones de Perfil',
    link: '/config-perfil',
    icon: Icons.settings,
  ),

  MenuOptionsProfile(
    title: 'Nuevo Usuario',
    subtitle: 'Registrar un nuevo usuario',
    link: '/new_user',
    icon: Icons.app_registration_sharp,
  ),

  MenuOptionsProfile(
    title: 'Dar de baja',
    subtitle: 'Inhabilita un usuario',
    link: '/down_user',
    icon: Icons.arrow_drop_down,
  ),

  MenuOptionsProfile(
    title: 'Cerrar sesión',
    subtitle: 'Gestión del Transporte Pesado.',
    link: '/',
    icon: Icons.logout_outlined,
  ),
];
