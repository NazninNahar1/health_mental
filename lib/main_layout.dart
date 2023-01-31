import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_mental/screens/appointment.dart';
import 'package:health_mental/screens/home_page.dart';


class MainLayOut extends StatefulWidget {
  const MainLayOut({Key? key}) : super(key: key);

  @override
  State<MainLayOut> createState() => _MainLayOutState();
}

class _MainLayOutState extends State<MainLayOut> {
  int currentPage = 0;
  final PageController _page = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _page,
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        children: [HomePage(), AppointmentPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (page) {
          setState(() {
            currentPage = page;
            _page.animateToPage(page,
                duration: Duration(microseconds: 500), curve: Curves.easeInOut);
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.houseChimneyMedical),
          label: "Home"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidCalendarCheck),
              label: "Appointments"),
        ],
      ),
    );
  }
}
