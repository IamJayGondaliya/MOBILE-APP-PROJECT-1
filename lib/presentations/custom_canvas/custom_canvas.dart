import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf_signature/presentations/custom_canvas/layout/body.dart';

class CustomCanvasView extends StatelessWidget {
  const CustomCanvasView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Signature Pad",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        leading: Container(),
      ),
      body: const SafeArea(
        child: CustomCanvasViewBody(),
      ),
    );
  }
}
