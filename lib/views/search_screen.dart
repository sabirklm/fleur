import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: TextFormField(
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  // labelText: "Name",
                  hintText: "Search",
                  labelStyle: GoogleFonts.sen(
                    fontSize: 16,
                  ),
                  hintStyle: GoogleFonts.sen(
                    fontSize: 16,
                  ),
                  filled: true,
                  isDense: true,
                  suffixIcon: const Icon(
                    Icons.search,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
