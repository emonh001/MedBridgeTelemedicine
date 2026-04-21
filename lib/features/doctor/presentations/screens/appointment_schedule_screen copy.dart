import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppointmentScheduleScreen extends StatefulWidget {
  const AppointmentScheduleScreen({super.key});
  @override
  _AppointmentScheduleScreenState createState() =>
      _AppointmentScheduleScreenState();
}

class _AppointmentScheduleScreenState extends State<AppointmentScheduleScreen> {
    List<DateTime> dates = [];
  int selectedDateIndex = 0;

  int selectedSlotIndex = 1;

  List<Map<String, dynamic>> slots = [
    {"time": "09:00 AM", "booked": true},
    {"time": "10:00 AM"},
    {"time": "11:30 AM"},
    {"time": "01:00 PM"},
    {"time": "02:30 PM", "booked": true},
    {"time": "04:00 PM"},
  ];

  @override
  void initState() {
    super.initState();
    generateDates();
  }

  void generateDates() {
    DateTime start = DateTime.now();

    dates = List.generate(30, (index) {
      return start.add(Duration(days: index));
    });
  }

  String getDay(DateTime date) =>
      DateFormat('EEE').format(date).toUpperCase();

  String getDate(DateTime date) =>
      DateFormat('dd').format(date);

  String getMonthYear() {
    return DateFormat('MMMM yyyy').format(dates[selectedDateIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 40),

            /// 🔷 HEADER
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  getMonthYear(),
                  style: TextStyle(color: Colors.white70, fontSize: 18),
                ),
                Row(
                  children: const [
                    Icon(Icons.chevron_left, color: Colors.white),
                    SizedBox(width: 10),
                    Icon(Icons.chevron_right, color: Colors.white),
                  ],
                )
              ],
            ),

            const SizedBox(height: 20),

            /// 🔷 HORIZONTAL DATE SCROLLER
            SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dates.length,
                itemBuilder: (context, index) {
                  final date = dates[index];
                  final isSelected = selectedDateIndex == index;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDateIndex = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: 70,
                      margin: EdgeInsets.only(right: 12),
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.blue : Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.6),
                                  blurRadius: 12,
                                )
                              ]
                            : [],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            getDay(date),
                            style: TextStyle(
                              color: isSelected
                                  ? Colors.white
                                  : Colors.black54,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            getDate(date),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: isSelected
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            /// 🔷 TITLE
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Available Slots",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ),

            const SizedBox(height: 10),

            /// 🔷 SLOT LIST
            Expanded(
              child: ListView.builder(
                itemCount: slots.length,
                itemBuilder: (context, index) {
                  final slot = slots[index];

                  bool isBooked = slot["booked"] == true;
                  bool isSelected = selectedSlotIndex == index;

                  return GestureDetector(
                    onTap: isBooked
                        ? null
                        : () {
                            setState(() {
                              selectedSlotIndex = index;
                            });
                          },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 250),
                      margin: EdgeInsets.symmetric(vertical: 8),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? Colors.blue.withOpacity(0.25)
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: Colors.blue.withOpacity(0.5),
                                  blurRadius: 10,
                                )
                              ]
                            : [],
                      ),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.access_time,
                                  color: isSelected
                                      ? Colors.blue
                                      : Colors.black54),
                              SizedBox(width: 10),
                              Text(
                                slot["time"],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: isSelected
                                      ? Colors.blue
                                      : Colors.black,
                                ),
                              ),
                            ],
                          ),

                          /// RIGHT SIDE
                          if (isBooked)
                            Text("BOOKED",
                                style:
                                    TextStyle(color: Colors.grey))
                          else if (isSelected)
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.circular(20),
                              ),
                              child: Text(
                                "SELECTED",
                                style:
                                    TextStyle(color: Colors.white),
                              ),
                            )
                          else
                            Icon(Icons.add_circle_outline)
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            /// 🔷 CONFIRM BUTTON
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 18),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blueAccent],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  "Confirm Booking →",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}