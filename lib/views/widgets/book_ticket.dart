import 'package:flutter/material.dart';
import 'package:movie/views/seats.dart';

// ignore: use_key_in_widget_constructors
class BookTicket extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<BookTicket> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 24,
      right: 8,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)),
        child: const Text(
          'BOOK-TICKET',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Ticket();
              });
        },
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class Ticket extends StatefulWidget {
  @override
  _TicketState createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  int dropdownvalue = 1;
  List<int> items = <int>[1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.grey[800],
      child: Center(
        child: Column(
          // ignore: always_specify_types
          children: [
            AppBar(
              backgroundColor: Colors.grey[800],
              title: const Text('How many Seats'),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              // ignore: always_specify_types
              actions: [
                const Padding(padding: EdgeInsets.only(right: 16)),
                DropdownButton<int>(
                  icon: const Icon(Icons.keyboard_arrow_down),
                  iconSize: 16,
                  items: items.map((int items) {
                    // ignore: always_specify_types
                    return DropdownMenuItem(
                        value: items, child: Text('$items'));
                  }).toList(),
                  onChanged: (int? newvalue) {
                    setState(
                      () {
                        dropdownvalue = newvalue!;
                      },
                    );
                  },
                  value: dropdownvalue,
                ),
                const SizedBox(
                  width: 16,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: always_specify_types
              children: [
                Column(
                  // ignore: always_specify_types, prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Balcony',
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text('Rs.150.0', style: TextStyle(color: Colors.white)),
                    const Text('Available', style: TextStyle(color: Colors.white))
                  ],
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  // ignore: always_specify_types, prefer_const_literals_to_create_immutables
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Text('First Class', style: TextStyle(color: Colors.white)),
                    const Text('Rs.120.0', style: TextStyle(color: Colors.white)),
                    const Text('Available', style: TextStyle(color: Colors.white))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => Seat(
                            title: 'Bad Boys For Life',
                            tickets: dropdownvalue)),
                  );
                },
                child: const Text(
                  'Select Seats',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
