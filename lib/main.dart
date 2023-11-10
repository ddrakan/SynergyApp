import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app/config/router/app_router.dart';
import 'package:app/presentation/providers/theme_provider.dart';
import 'config/theme/app_theme.dart';
import 'package:google_maps_flutter_android/google_maps_flutter_android.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

Future<void> main() async {

  final GoogleMapsFlutterPlatform mapsImplementation = GoogleMapsFlutterPlatform.instance;
  if (mapsImplementation is GoogleMapsFlutterAndroid) {
    WidgetsFlutterBinding.ensureInitialized();
    await mapsImplementation .initializeWithRenderer(AndroidMapRenderer.legacy);
  }

  runApp(
      const ProviderScope(
          child: APP() //Confg. Provider
      )
  );
}

class APP extends ConsumerWidget {
  const APP({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final isDarkmode = ref.watch(isDarkmodeProvider);
    final selectedColor = ref.watch(selectedColorProvider);

    return MaterialApp.router(
      title: 'Synergy App',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
          selectedColor: selectedColor,
          isDarkmode: isDarkmode).getTheme(),
    );
  }
}

