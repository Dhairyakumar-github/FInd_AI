import 'package:flutter/material.dart';
import 'package:project/Widgits/CustomCategory.dart';
import 'package:project/Widgits/searchBar.dart';

class CatagoryPage extends StatelessWidget {
  const CatagoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: constraints.maxHeight * 0.06,
                ),
                CustomSearchBar(),
                Container(
                  height: constraints.maxHeight * 0.94,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 15,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 11 / 4,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return const CustomCategory();
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
