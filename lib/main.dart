import 'package:flutter/material.dart';
import 'package:portal_proveedores/providers/proveedores_provider.dart';
import 'package:portal_proveedores/screens/screens.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProveedoresProvider()),
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Películas',
      initialRoute: 'login',
      routes: {
        'login':   ( _ ) => const LoginScreen(),
        'home':    ( _ ) => const HomeScreen(),
        'invoice': ( _ ) => const InvoiceScreen(),
        'supplier': ( _ ) => const SupplierScreen(),
        'complement': ( _ ) => const ComplementScreen(),
      },
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Colors.indigo
        )
      ),
    );
  }
}
