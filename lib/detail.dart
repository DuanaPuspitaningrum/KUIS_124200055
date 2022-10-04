import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuis_124200055/game_store.dart';

class detail extends StatefulWidget {
  final GameStore data;
  const detail({Key? key, required this.data}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  bool toggle = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.data.name}"),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: (MediaQuery
                  .of(context)
                  .size
                  .height) / 3,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: widget.data.imageUrls.length,
                itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.network(
                        widget.data.imageUrls[index], //nampilin foto
                        width: 200,
                        height: 210,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Container( // container buat wadah si deskripsi tempat
              padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.pinkAccent.shade400,
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: 50,),
                    Text(widget.data.name,
                      style:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                      child: Text(widget.data.about,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text("Release Date : ${widget.data.releaseDate}",
                      style:
                      TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                    Text("Genre: ${widget.data.tags[0]}",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Text("Price : ${widget.data.price}",
                      style:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.pink.shade600),
                    ),
                    Text("Review Average : ${widget.data.reviewAverage} | Review Count : ${widget.data.reviewCount}",
                      style:
                      TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                    Text(
                      "View More : ${widget.data.linkStore}" ,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15),
                    ),

                    SizedBox(height: 50,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
