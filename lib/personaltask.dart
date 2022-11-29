import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Personl_Task extends StatefulWidget {
  const Personl_Task({Key? key}) : super(key: key);

  @override
  State<Personl_Task> createState() => _Personl_TaskState();
}

class _Personl_TaskState extends State<Personl_Task> {
  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2025));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        Spacer(),
                        Text(
                          "Personal Task",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.white),
                        ),
                        Spacer(),
                        Text(
                          ":",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "You have 3 new tasks for today!",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 120,
              ),
              child: Container(
                height: 620,
                width: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TableCalendar(
                        calendarBuilders: CalendarBuilders(
                          dowBuilder: (context, day) {
                            if (day.weekday == DateTime.sunday) {
                              final text = DateFormat.E().format(day);

                              return Center(
                                child: Text(
                                  text,
                                  style: TextStyle(color: Colors.red),
                                ),
                              );
                            }
                            if (day.weekday == DateTime.saturday) {
                              final text = DateFormat.E().format(day);

                              return Center(
                                child: Text(
                                  text,
                                  style: TextStyle(color: Colors.green),
                                ),
                              );
                            }
                          },
                        ),
                        firstDay: DateTime.utc(2010, 10, 16),
                        lastDay: DateTime.utc(2030, 3, 14),
                        focusedDay: DateTime.now(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: _showDatePicker,
                        child: Container(
                          height: 40,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black12,
                          ),
                          child: Text(
                            'Select Date',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
