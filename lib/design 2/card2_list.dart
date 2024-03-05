import 'package:flutter/cupertino.dart';

import 'card 2.dart';

class Card2List extends StatelessWidget {
  const Card2List({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context,index){
            return Card2();
          },
          separatorBuilder: (context,index)=>SizedBox(height: 20),
          itemCount: 8),
    );
  }
}
