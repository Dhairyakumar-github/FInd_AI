import 'package:flutter/material.dart';
import 'package:project/Widgits/CustomCategory.dart';
import 'package:project/Widgits/searchBar.dart';

class CatagoryPage extends StatelessWidget {
  const CatagoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              CustomSearchBar(),
              Container(
                // color: Colors.cyan,
                height: MediaQuery.of(context).size.height,
                child: Expanded(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 15,
                    // padding: EdgeInsets.symmetric(vertical: 10),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
