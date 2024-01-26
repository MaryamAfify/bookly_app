import 'package:flutter/material.dart';

class CustomLoadingIndectaor extends StatelessWidget {
  const CustomLoadingIndectaor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}