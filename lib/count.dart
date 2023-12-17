import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'logic.dart';

class provider extends StatefulWidget {
  const provider({Key? key}) : super(key: key);

  @override
  State<provider> createState() => _providerState();
}

class _providerState extends State<provider> {




  @override
  Widget build(BuildContext context) {
    print("build");
    final countprovider= Provider.of<Count_add>(context,listen: false);
    return Scaffold(

      body  :Column(
        mainAxisAlignment: MainAxisAlignment.center,
      //  crossAxisAlignment: CrossAxisAlignment.end,
        children: [
         Center(

           child:Consumer<Count_add>(builder: (context,value,child) {
             return Text(value.b.toString(),
               style: TextStyle(
                 fontSize: 50,
               ),
             );
           }),
          ),
          FloatingActionButton(
              onPressed: (){
                countprovider.add();

            },
            child: Icon(Icons.add,
            ),
            ),
    ],
    ),
        );




  }
}
