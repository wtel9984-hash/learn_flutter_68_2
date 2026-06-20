import 'package:flutter/material.dart';
import 'package:learn_flutter_68_2/model/person.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter_68_2/screen/addFrom.dart';
class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) { 
    // return ListView.builder(
    //   itemCount: people.length,
    //   itemBuilder: (context, index) {
    //     return Container(
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(10),
    //         color: people[index].job.color,
    //       ),
    //       margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
    //       padding: EdgeInsets.all(40),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Text("ชื่อ: ${people[index].name}", style: GoogleFonts.kanit(fontSize: 18, fontWeight: FontWeight.bold)),
    //               Text("อายุ: ${people[index].age} ปี", style: GoogleFonts.kanit(fontSize: 16)),
    //               Text("อาชีพ: ${people[index].job.title}", style: GoogleFonts.kanit(fontSize: 16)),
    //             ],
    //           ),
    //           Image(image: AssetImage(people[index].job.image), width: 100, height: 100, fit: BoxFit.cover),
    //         ],
    //       ),
    //     );
    //   },
    // );
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: people.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: people[index].job.color,
                ),
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                padding: EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ชื่อ: ${people[index].name}", style: GoogleFonts.kanit(fontSize: 18, fontWeight: FontWeight.bold)),
                        Text("อายุ: ${people[index].age} ปี", style: GoogleFonts.kanit(fontSize: 16)),
                        Text("อาชีพ: ${people[index].job.title}", style: GoogleFonts.kanit(fontSize: 16)),
                      ],
                    ),
                    Image(image: AssetImage(people[index].job.image), width: 100, height: 100, fit: BoxFit.cover),
                  ],
                ),
              );
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            height: 100,
            width: 100,
            child: IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.pink.shade100),
              ),
              onPressed: () async {
                await Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AddForm();
                }));
                setState(() {});
              },
              icon: Icon(Icons.add, size: 50, color: Colors.pink.shade400)
            ),
          ),
        )
      ],
    );
   }
}