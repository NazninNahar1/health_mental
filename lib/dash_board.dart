
import 'package:flutter/material.dart';
import 'package:health_mental/phsycologist_list.dart';
import 'package:health_mental/reminder/reminder_page_one.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        width: double.infinity,
        color: const Color(0xffFAFCFE),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(

                child: Image.asset("assets/home.png")),
            Image.asset("assets/book.png"),
            Image.asset("assets/Group 1000005942.png"),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Reminder(),
                  ),
                );
              },

              child: Image.asset("assets/notification.png"),
            ),
            Image.asset("assets/user.png")
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hey Aumi",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text("We are here to help you",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFD4E5),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Image.asset(
                              "assets/doctor 1.png",
                            ),
                          ),
                          Text("Psycologist")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                              color: Color(0xffCEFFEB),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Image.asset(
                              "assets/statistics 1.png",
                            ),
                          ),
                          Text("Mood Track")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                              color: Color(0xffCEFFEB),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Image.asset(
                              "assets/meditation (1) 1.png",
                            ),
                          ),
                          Text("Relaxation")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFDFC0),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                            child: Image.asset(
                              "assets/customer-service 1.png",
                            ),
                          ),
                          Text("Support")
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 150,
                  child: Image.asset(
                    "assets/Group 1000007408.png",
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Psycologist",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PsycologistList()));
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: List<Widget>.generate(docList.length, (index) {
                        return Card(
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
                        );
                      }),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
