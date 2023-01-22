import 'package:flutter/material.dart';
import 'package:flutter_project/ui/pages/PhoneCall.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/profilepicture.PNG",
                              ),
                              fit: BoxFit.fill
                          )
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.notifications,
                      color: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "How is your health\ntoday?",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.74),
                          fontSize: 40,
                          fontWeight: FontWeight.w600
                        )
                    ),
                ]),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                    "Friday,July 15",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.36),
                        fontSize: 22,
                        fontWeight: FontWeight.w500
                    ),
                  )
                ]),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming appointment",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(.59),
                      )
                    ),
                    const SizedBox(width: 10),
                    const Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff977CE6),
                        )
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Stack(
                  children: [
                    Container(
                      width: 400,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff7B6FF2),
                              Color(0xffAB93FF)]),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(image: AssetImage(
                                    "assets/images/doctor1.PNG",
                                  ),
                                  ))
                                ),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Dr. Kriss Hemsworth",
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(1.00),
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Text("10:30 AM • General Consultation",
                                        style: TextStyle(
                                          color: Colors.white.withOpacity(0.7),
                                          fontWeight: FontWeight.w600
                                        ),)
                                    ],
                                  )
                                ],
                              )
                              ]),
                          const SizedBox(height: 25),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: const EdgeInsets.only(left: 35),
                              width: 100,
                              height: 20,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white.withOpacity(0.25),
                              ),
                              child: Text(
                                "Starts in 2 min",
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                ),
                              ),
                            )
                          )
                        ],
                          )
                    ),
                    Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        width: 100,
                        height: 35,
                        margin: const EdgeInsets.only(top: 130, right: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white
                        ),
                        child: GestureDetector(
                          onTap: () {
                            print('Navigation vers la page PhoneCall');
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const PhoneCall(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(
                                Icons.videocam_outlined,
                                color: Color(0xff977CE6),
                              ),
                              Text(
                                  "Join Call",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.59),
                                      fontWeight: FontWeight.w700
                                  )
                              ),],
                                ),
                        ),
                    ))]),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best doctor's near you",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.59),
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff977CE6),
                        )
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Stack(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child:
                            Column(
                              children: [
                                Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(image: AssetImage(
                                          "assets/images/doctor1.PNG",
                                        ),
                                        ))
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  "Dr. Tim Brown",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.72),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "Cardiologist",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.46),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: const Color(0xffFBD489).withOpacity(1),
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Color(0xffFBD489),
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Color(0xffFBD489),
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Color(0xffFBD489),
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Color(0xffFBD489),
                                    )
                                  ],
                                ),
                              ],
                            )
                        ),
                              const SizedBox( width: 50,),
                              Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child:
                                  Column(
                                    children: [
                                      Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              image: const DecorationImage(image: AssetImage(
                                                "assets/images/doctor2.PNG",
                                              ),
                                              ))
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        "Dr. Henna S.",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.72),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        "Neurologist",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.46),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xffFBD489),
                                          ),
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xffFBD489),
                                          ),
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xffFBD489),
                                          ),
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xffFBD489),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.black.withOpacity(0.15),
                                          )
                                        ,
                                      ])
                                    ],
                                  )
                              )
                              ]),
                    Container(
                      margin:EdgeInsets.only(left: 63, top: 138),
                      child: const Icon(
                        Icons.play_circle,
                        color: Colors.black54),
                    ),
                    Container(
                      margin:EdgeInsets.only(left: 263, top: 138),
                      child: const Icon(
                          Icons.play_circle,
                          color: Colors.black54),
                    ),

                  ]
                ),
                const SizedBox(height: 25),
                Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(1),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.home_filled,
                          color: const Color(0xff977CE6).withOpacity(1),
                        ),
                        Icon(
                          Icons.show_chart_outlined,
                          color: Colors.black.withOpacity(0.46),
                        ),
                        Icon(
                          Icons.location_history,
                          color: Colors.black.withOpacity(0.46),
                        ),
                        Icon(
                          Icons.settings_rounded,
                          color: Colors.black.withOpacity(0.46),
                        )
                      ],
                    ),
                )
                        ]),

                )
                  ),
              ),
            );
    }
}
