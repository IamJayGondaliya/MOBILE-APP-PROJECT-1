import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pdf_signature/configs/theme.dart';
import 'package:pdf_signature/presentations/homescreen/home_screen.dart';
import 'package:pdf_signature/presentations/pdf_viewer/pdf_viewer.dart';
import 'package:pdf_signature/provider/cache_files_provider.dart';
import 'package:pdf_signature/provider/signature_provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: SignatureProvider(),
        ),
        ChangeNotifierProvider.value(
          value: CacheFileProvider(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.getCustomTheme(),
        home: const HomeScreenView(),
        routes: {
          PdfViewerView.routeName: (context) => const PdfViewerView(),
        },
      ),
    );
  }
}
