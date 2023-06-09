import 'package:flutter/material.dart';

import '../medical/dector_item.dart';
import '../medical/specialist_item.dart';
import '../travel/category_listview.dart';
import '../travel/place_staggered_gridview.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   iconSize: 24,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home_outlined,
      //         color: Colors.black54,
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.calendar_month_outlined,
      //         color: Colors.black54,
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.chat_bubble_outline,
      //         color: Colors.black54,
      //       ),
      //       label: '',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.notifications_none_outlined,
      //         color: Colors.black54,
      //       ),
      //       label: '',
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              // const SizedBox(
              //   height: 12,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: const [
              //         Text(
              //           "Hello,",
              //           style: TextStyle(
              //             color: Colors.black54,
              //             fontSize: 16,
              //           ),
              //         ),
              //         SizedBox(
              //           height: 4,
              //         ),
              //         Text(
              //           "Pesulap Merah",
              //           style: TextStyle(
              //             color: Colors.black,
              //             fontWeight: FontWeight.bold,
              //             fontSize: 20,
              //           ),
              //         )
              //       ],
              //     ),
              //     const CircleAvatar(
              //       radius: 30,
              //       backgroundColor: Colors.grey,
              //       child: CircleAvatar(
              //         radius: 28,
              //         backgroundImage: AssetImage("assets/images/pm.png"),
              //       ),
              //     )
              //   ],
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   padding: const EdgeInsets.only(left: 16),
              //   height: 64,
              //   decoration: BoxDecoration(
              //       color: const Color.fromARGB(95, 179, 173, 173),
              //       borderRadius: BorderRadius.circular(16)),
              //   child: Row(
              //     children: const [
              //       Icon(
              //         Icons.search,
              //         size: 32,
              //         color: Colors.black54,
              //       ),
              //       SizedBox(
              //         width: 12,
              //       ),
              //       Text(
              //         "How can we help you?",
              //         style: TextStyle(
              //           color: Colors.black54,
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SpecialistItem(
                      imagePath: "assets/images/clean.png",
                      imageName: "Dentist",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SpecialistItem(
                      imagePath: "assets/images/knife.png",
                      imageName: "Surgeon",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SpecialistItem(
                      imagePath: "assets/images/lungs.png",
                      imageName: "Therapy",
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    SpecialistItem(
                      imagePath: "assets/images/hormones.png",
                      imageName: "Physiologist",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Doctor list",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DoctorItem(
                      image: "assets/images/1.png",
                      name: "Nycta Gina",
                      specialist: "Pediatrician",
                    ),
                    DoctorItem(
                      image: "assets/images/3.png",
                      name: "Reisa Broto Asmoro",
                      specialist: "Surgeon",
                    ),
                    DoctorItem(
                      image: "assets/images/2.png",
                      name: "Indah Kusumaningrum",
                      specialist: "Odontologist",
                    ),
                    DoctorItem(
                      image: "assets/images/4.png",
                      name: "Mesty Ariotedjo",
                      specialist: "Ophtamologist",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CategoryListview(),
              const Expanded(
                child: PlaceStaggeredGridview(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
