

import 'package:flutter/material.dart';
class Seat extends StatefulWidget {

  const Seat({Key? key, required this.title, required this.tickets}) : super(key: key);

  final String title;
  final int tickets;

  @override
  _SeatState createState() => _SeatState();
}

class _SeatState extends State<Seat> {
  // ignore: always_specify_types
  Set<int> seats = {};
  late String value;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title:Text(widget.title,style: const TextStyle(color: Colors.white),) ,
          leading: IconButton(icon:const Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },),

          // ignore: always_specify_types
          actions: [
            Text( '${widget.tickets} Tickets')
          ],
        ),
        body: Column(

          // ignore: always_specify_types
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text('Screen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
            ),
            GridView.count(
              crossAxisCount: 6,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
              shrinkWrap:true ,
              padding:
              const EdgeInsets.all(8.0),
              // ignore: always_specify_types
              children: List.generate(36, (int index){
                value='${String.fromCharCode(65+index~/6).toUpperCase()}${(index%6)+1}';
                return InkWell(
                  onTap: (){
                   setState(() {

                     if(seats.contains(index)){
                       seats.remove(index);
                     }else{
                       if(seats.length == widget.tickets){
                         return;
                       }
                       seats.add(index);
                     }
                   });
                  },

                  child: Container(
                    decoration:BoxDecoration(border:Border.all(color: Colors.greenAccent) , color: seats.contains(index)?Colors.greenAccent: Colors.transparent,
                    ),

                    alignment: Alignment.center,
                    child:Text(value,style: const TextStyle(color: Colors.white),),
                  ),
                );
              }),
            ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: Size(MediaQuery.of(context).size.width, 40)),

          onPressed:(){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Your tickets are booked ')),

              );
          },
  child:const Text('Book',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
           )
          ],
        ),
      ),
    );
  }
}
