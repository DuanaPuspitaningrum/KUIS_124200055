
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuis_124200055/detail.dart';
import 'package:kuis_124200055/game_store.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Game',
          style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        final GameStore data = gameList[index];
        return InkWell(
          onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
          return detail(data: data);
          }));
      },
          child:Container(
            padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.pinkAccent.shade400,
            ),
            borderRadius: BorderRadius.circular(5.0),
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Image.network(data.imageUrls[0], width: 200,), //nampilin foto
            SizedBox(height: 10,),
            Text(data.name,
              style: TextStyle(
                fontWeight: FontWeight.normal,
          ),),
          SizedBox(height: 10,),
          Text(data.price,
              style: TextStyle(
                 fontWeight: FontWeight.bold,
             ),
            ),
          SizedBox(height: 20,)

      ],
      ),
            ),
          ),
      );

      },
        itemCount: gameList.length,
      ),
    );
  }
}
