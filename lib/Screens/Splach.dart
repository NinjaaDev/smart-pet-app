import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet/Screens/HomeScreen.dart';

class Splach extends StatefulWidget {
  const Splach({super.key});

  @override
  State<Splach> createState() => _SplachState();
}

class _SplachState extends State<Splach> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 40,
            left: 0,
            child: Image.asset(
              'assets/images/pet.png',
              fit: BoxFit.contain,
              width: 150,
              height: 150,
              color: Colors.white.withOpacity(0.05), // make it subtle
              colorBlendMode: BlendMode.dstATop,
            ),
          ),
          Positioned(
            top: 70,
            left: 8,
            child: Text("Smart Pet",
                style: TextStyle(
                  fontSize: 55,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor, // use primary color
                  letterSpacing: 2,
                )),
          ),
          Positioned(
              top: -100,
              right: 10,
              child: Image.asset(
                'assets/images/dog.png',
                fit: BoxFit.contain,
                width: 300,
                height: 700,
              )),
          Positioned(
            top: 180,
            left: 210,
            child: Image.asset(
              'assets/images/pet.png',
              fit: BoxFit.contain,
              width: 100,
              height: 150,
              color: Colors.white.withOpacity(0.1), // make it subtle
              colorBlendMode: BlendMode.dstATop,
            ),
          ),
          Positioned(
            top: 270,
            left: 0,
            child: Image.asset(
              'assets/images/pet.png',
              fit: BoxFit.contain,
              width: 100,
              height: 150,
              color: Colors.white.withOpacity(0.05), // make it subtle
              colorBlendMode: BlendMode.dstATop,
            ),
          ),
          Positioned(
            top: 380,
            left: 260,
            child: Image.asset(
              'assets/images/pet.png',
              fit: BoxFit.contain,
              width: 60,
              height: 60,
              color: Colors.white.withOpacity(0.05), // make it subtle
              colorBlendMode: BlendMode.dstATop,
            ),
          ),
          Positioned(
            top: 420,
            left: 12,
            child: Column(
              children: [
                Container(
                  width: 280,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          "Happy Pets,Happy You",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.white, // use primary color
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Keep your furry friends healthy,happy,and cared for with smart tools and trusted pet services.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.white, // use primary color
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homescreen()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
