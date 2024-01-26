import 'package:flutter/material.dart';

class CustomTextFieldSearch extends StatelessWidget {
  const CustomTextFieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white,
            )),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.white,
            )),
        hintText: 'Search',
        suffixIcon: Opacity(
            opacity: .5,
            child:
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
      ),
    );
  }
}
