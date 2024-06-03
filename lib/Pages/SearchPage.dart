import 'package:flutter/material.dart';
import 'package:project/Widgits/SearchList.dart';
import 'package:project/Widgits/searchBar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 248, 252),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomSearchBar(),
              SearchList(),
            ],
          ),
        ),
      ),
    );
  }
}



                // child: TextField(
                  //   style: const TextStyle(fontSize: 20),
                  //   textAlign: TextAlign.left,
                  //   decoration: InputDecoration(
                  //     contentPadding: const EdgeInsets.symmetric(
                  //         horizontal: 20, vertical: 20),
                  //     border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(25),
                  //         borderSide: BorderSide.none),
                  //     filled: true,
                  //     fillColor: Colors.white,
                  //     hintText: "Search ",
                  //     hintStyle: const TextStyle(fontSize: 22),
                  //   ),
                  // ),