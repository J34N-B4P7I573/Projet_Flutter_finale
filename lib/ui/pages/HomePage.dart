import 'package:flutter/material.dart';
import 'package:flutter_project/ui/pages/MainMenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff7B6FF2),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                    "Exceptional Care\nClose to You.",
                      style: TextStyle(
                        color: Colors.white.withOpacity(1.00),
                        fontSize: 40,
                        fontWeight: FontWeight.w600
                      )
                    ),
                    Text(
                      "Say yes to your good health!",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.70),
                          fontSize: 20
                        )
                    ),
                    const SizedBox(height: 30),
                    GestureDetector(
                        onTap: () {
                          print('Navigation vers la page MainMenu');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const MainMenu(),
                            ),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 220,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.55),
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Get Started  ",
                                    style: TextStyle(
                                      fontSize: 24)
                                  ),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.arrow_right_alt_rounded,
                                      size: 30,
                                      color: Colors.white,),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                ],),
              const SizedBox(height: 10),
              Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(top: 150),
                width: 600,
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/homepagedoctor.png')))),
              ],
            )),
        ),
      ),
    );
  }
}
