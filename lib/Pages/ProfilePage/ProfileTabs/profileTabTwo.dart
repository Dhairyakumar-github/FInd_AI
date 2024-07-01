import 'package:flutter/material.dart';
import 'package:project/Widgits/SearchList.dart';

class ProfileTabTwo extends StatelessWidget {
  const ProfileTabTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: AlwaysScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return SearchList();
      },
    );
  }
}
