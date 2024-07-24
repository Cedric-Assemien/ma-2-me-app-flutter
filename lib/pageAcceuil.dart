// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: unnecessary_const
const coleur = const Color(0xFF54D3C2);

class acceuil_page extends StatefulWidget {
  const acceuil_page({super.key});

  @override
  State<acceuil_page> createState() => _acceuil_pageState();
}

class _acceuil_pageState extends State<acceuil_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "Explore",
          style: GoogleFonts.nunito(
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
        actions: [
          const Icon(CupertinoIcons.heart),
          const SizedBox(
            width: 15,
          ),
          const Icon(Icons.location_on),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              color: const Color.fromARGB(255, 239, 238, 238),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(15, 10, 4, 10),
                        padding: const EdgeInsets.all(15),
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              const BoxShadow(
                                  color: Color.fromARGB(255, 188, 187, 187),
                                  blurStyle: BlurStyle.normal,
                                  blurRadius: 0.1,
                                  offset: Offset(2, 3))
                            ]),
                        child: const Text(
                          "London",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(10),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: coleur,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ]),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Choose date",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Number of rooms",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                        ]),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "12 Dec - 22 Dec",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("1 Room - 2 Adults",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17)),
                        ])
                  ])),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("550 hotels founds"),
              SizedBox(
                width: 50,
              ),
              Row(
                children: [
                  Text("Filters"),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.filter_list_sharp,
                    color: coleur,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              //   height: 200,
              margin: EdgeInsets.only(bottom: 25),
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 4,
                      blurRadius: 2,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(0, 1),
                    )
                  ]),
              child: Column(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/hotel_1.png")),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Stack(children: [
                    Positioned(
                      top: 10,
                      left: 300,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              const BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  blurStyle: BlurStyle.normal,
                                  spreadRadius: 0.5,
                                  offset: Offset(1, 3))
                            ]),
                        child: const Icon(
                          CupertinoIcons.heart,
                          size: 20,
                          color: coleur,
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Grand Royl Hotel",
                            style: GoogleFonts.nunito(
                                fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "\$180",
                            style: GoogleFonts.nunito(
                                fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "wembley,London",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Row(children: [
                            Icon(
                              CupertinoIcons.location_solid,
                              size: 15,
                              color: coleur,
                            ),
                            Text(
                              "2 km to city",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ]),
                          Text("/per night")
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: const Row(children: [
                              Icon(
                                Icons.star_outlined,
                                color: coleur,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: coleur,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: coleur,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: coleur,
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                color: coleur,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "36 reviews",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ]),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ])),
          Container(
              //   height: 200,
              margin: EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 4,
                      blurRadius: 2,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(0, 1),
                    )
                  ]),
              child: Column(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/hotel_2.png")),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Stack(children: [
                    Positioned(
                      top: 10,
                      left: 300,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              const BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  blurStyle: BlurStyle.normal,
                                  spreadRadius: 0.5,
                                  offset: Offset(1, 3))
                            ]),
                        child: const Icon(
                          CupertinoIcons.heart,
                          size: 20,
                          color: coleur,
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Grand Royl Hotel",
                            style: GoogleFonts.nunito(
                                fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "\$180",
                            style: GoogleFonts.nunito(
                                fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "wembley,London",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Row(children: [
                            Icon(
                              CupertinoIcons.location_solid,
                              size: 15,
                              color: coleur,
                            ),
                            Text(
                              "2 km to city",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ]),
                          Text("/per night")
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: const Row(children: [
                              Icon(
                                Icons.star_outlined,
                                color: coleur,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: coleur,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: coleur,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: coleur,
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                color: coleur,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "36 reviews",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ])),
          Container(
              //   height: 200,
              margin: EdgeInsets.only(top: 10, bottom: 10),
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 4,
                      blurRadius: 2,
                      blurStyle: BlurStyle.normal,
                      offset: Offset(0, 1),
                    )
                  ]),
              child: Column(children: [
                Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image/hotel_2.png")),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Stack(children: [
                    Positioned(
                      top: 10,
                      left: 300,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              const BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 4,
                                  blurStyle: BlurStyle.normal,
                                  spreadRadius: 0.5,
                                  offset: Offset(1, 3))
                            ]),
                        child: const Icon(
                          CupertinoIcons.heart,
                          size: 20,
                          color: coleur,
                        ),
                      ),
                    ),
                  ]),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Grand Royl Hotel",
                            style: GoogleFonts.nunito(
                                fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "\$180",
                            style: GoogleFonts.nunito(
                                fontSize: 17, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "wembley,London",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                          Row(children: [
                            Icon(
                              CupertinoIcons.location_solid,
                              size: 15,
                              color: coleur,
                            ),
                            Text(
                              "2 km to city",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ]),
                          Text("/per night")
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            child: const Row(children: [
                              Icon(
                                Icons.star_outlined,
                                color: coleur,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: coleur,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: coleur,
                              ),
                              Icon(
                                Icons.star_outlined,
                                color: coleur,
                              ),
                              Icon(
                                Icons.star_border_outlined,
                                color: coleur,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "36 reviews",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ]),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ])),
        ]),
      ),
    );
  }
}
