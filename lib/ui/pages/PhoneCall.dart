import 'package:flutter/material.dart';
import 'package:flutter_project/ui/pages/MainMenu.dart';


class PhoneCall extends StatefulWidget {
  const PhoneCall({Key? key}) : super(key: key);

  @override
  State<PhoneCall> createState() => _PhoneCallState();
}

class _PhoneCallState extends State<PhoneCall> {
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
                    GestureDetector(
                        onTap: () {
                          print('Retour à la page MainMenu');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const MainMenu(),
                            ),
                          );
                        },
                      child:
                        Icon(
                          Icons.arrow_back,
                          color: Colors.black.withOpacity(0.72),
                        ),
                    ),
                    Text(
                        "Dr. Jerry Clington",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black.withOpacity(0.72)
                        )
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 20),
                Stack(
                  children: [
                    Container(
                      width: 400,
                      height: 500,
                      decoration:  BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/phonecalldoc.jpg"
                            ),
                        ),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              const SizedBox(height: 30),
                              Row(
                                  children: [
                                    Icon(
                                        Icons.brightness_1,
                                        color: const Color(0xffCF0000).withOpacity(1),
                                        size: 14
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                        "00:30",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.81),
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ]),
                              const SizedBox(height: 35),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 75,
                            height: 175,
                            margin: const EdgeInsets.only(bottom: 375),
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "assets/images/phonecalldoc2.jpg")),
                                borderRadius: BorderRadius.circular(35)
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          margin: const EdgeInsets.only(top: 350),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white
                          ),
                          child: Icon(
                            Icons.volume_up,
                            color: Colors.black.withOpacity(0.63),
                            size: 25,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.only(top: 420),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white
                          ),
                          child:
                            Icon(
                              Icons.mic,
                              color: Colors.black.withOpacity(0.63),
                              size: 25,
                            ),
                            ),
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.only(top: 420),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white
                          ),
                          child:
                          RotatedBox(
                            quarterTurns: 1,
                            child: Icon(
                              Icons.phone,
                              color: Colors.red.withOpacity(0.63),
                              size: 25,
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: 75,
                      height: 75,
                      margin: const EdgeInsets.only(top: 473, left: 138.5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xff7B6FF2),
                                Color(0xffAB93FF)]),
                      ),
                      child: Icon(
                        Icons.videocam_outlined,
                        color: Colors.white.withOpacity(0.63),
                        size: 40,
                      ),
                    )
                    ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
