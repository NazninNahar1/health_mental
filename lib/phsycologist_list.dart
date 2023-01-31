import 'package:flutter/material.dart';

class PsycologistList extends StatefulWidget {
  const PsycologistList({Key? key}) : super(key: key);

  @override
  State<PsycologistList> createState() => _PsycologistListState();
}

class _PsycologistListState extends State<PsycologistList> {
  List<Map<String, dynamic>> docList = [
    {
      "image": Image.asset("assets/Rectangle 5201.png"),
      "name": "Dr.Deven Lane",
      "position": "Psycologist",
      "hospital": "Square"
    },
    {
      "image": Image.asset("assets/Rectangle 5201 (1).png"),
      "name": "Dr.Samanta Lane",
      "position": "Psycologist",
      "hospital": "Square"
    },
    {
      "image": Image.asset("assets/Rectangle 5201.png"),
      "name": "Dr.Deven Lane",
      "position": "Psycologist",
      "hospital": "Square"
    },
    {
      "image": Image.asset("assets/Rectangle 5201 (1).png"),
      "name": "Dr.Samanta Lane",
      "position": "Psycologist",
      "hospital": "Square"
    },
    {
      "image": Image.asset("assets/Rectangle 5201.png"),
      "name": "Dr.Deven Lane",
      "position": "Psycologist",
      "hospital": "Square"
    },
    {
      "image": Image.asset("assets/Rectangle 5201 (1).png"),
      "name": "Dr.Samanta Lane",
      "position": "Psycologist",
      "hospital": "Square"
    },
    {
      "image": Image.asset("assets/Rectangle 5201.png"),
      "name": "Dr.Deven Lane",
      "position": "Psycologist",
      "hospital": "Square"
    },
    {
      "image": Image.asset("assets/Rectangle 5201 (1).png"),
      "name": "Dr.Samanta Lane",
      "position": "Psycologist",
      "hospital": "Square"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
        title:Text('Psycologist',style: TextStyle(color: Colors.black),),
        titleSpacing: 0,
      ),
      body: SizedBox(
          height: double.infinity,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List<Widget>.generate(docList.length, (index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Card(
                  margin:
                  EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Row(
                    children: [
                      docList[index]['image'],
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            docList[index]['name'],
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(docList[index]['position']),
                          Text(
                            docList[index]['hospital'],
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Colors.blue),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
          )),
    );
  }
}
