import 'package:flutter/cupertino.dart';

import 'card 1.dart';

class Card1List extends StatelessWidget {
  const Card1List({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context,index){
            return Card1();
          },
          separatorBuilder: (context,index)=>SizedBox(height: 20),
          itemCount: 8),
    );
  }
}
