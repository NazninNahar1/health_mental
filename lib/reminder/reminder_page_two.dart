
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';
import 'package:intl/intl.dart' show DateFormat;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  Future<void> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime)
      setState(() {
        _selectedTime = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Text('Selected date: ${DateFormat('yyyy-MM-dd').format(_selectedDate)}'),
       Text('Selected time: ${_selectedTime.format(context)}'),
       CalendarCarousel<Event>(
         onDayPressed: (DateTime date, List<Event> events) {
           this.setState(() => _selectedDate = date);
         },
         thisMonthDayBorderColor: Colors.grey,
         weekFormat: false,
         height: 400.0,
         selectedDateTime: _selectedDate,
         customGridViewPhysics: NeverScrollableScrollPhysics(),
         markedDateShowIcon: true,
         markedDateIconMaxShown: 2,
         markedDateMoreShowTotal: false,
         showHeader: false,
         selectedDayTextStyle: TextStyle(
           color: Colors.white,
         ),
         todayTextStyle: TextStyle(
           color: Colors.blue,
         ),

       ),
       ElevatedButton(
         child: Text('Pick date'),
         onPressed: _selectDate,
       ),
       ElevatedButton(
         child: Text('Pick time'),
         onPressed: _selectTime,
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: ElevatedButton(
           child: Text('set Reminder'),
           onPressed: () {},
           style: ButtonStyle(
             backgroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
               return Colors.blue;
             }),

             minimumSize: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
               return Size(double.infinity, 48);
             }),
           ),
         ),
       ),
     ],
   );
  }
}

