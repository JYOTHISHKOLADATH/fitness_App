import 'package:flutter/material.dart';

import 'home_screen.dart';
class BmiCalculatorPage extends StatefulWidget {
  const BmiCalculatorPage({super.key});

  @override
  State<BmiCalculatorPage> createState() => _BmiCalculatorPageState();
}

class _BmiCalculatorPageState extends State<BmiCalculatorPage> {
  bool isCalculated = false;
  String bmiResult="";
  TextEditingController heightController =TextEditingController();
  TextEditingController weightController =TextEditingController();

  double calculateBMI(double weight, double height) {
    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);
    return double.parse(bmi.toStringAsFixed(1));
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Visibility(
            visible:!isCalculated,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Check your BMI to determine your workout plan.",
                    style: TextStyle(
                        color: Color(0xff092337),
                        fontWeight: FontWeight.bold,
                        fontSize: 28),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    child:  TextField(
                      controller: heightController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                          hintText: "Enter your height in cm ",
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    child:  TextField(
                      controller: weightController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                          hintText: "Enter your weigh in Kg",
                          fillColor: Colors.white,
                          filled: true),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  width: 300,
                  height: 40,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff092337),
                      ),
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => const BmiCalculatorPage()),
                        // );
                        bmiResult = calculateBMI(double.parse(weightController.text), double.parse(heightController.text)).toString();
                        isCalculated = true;
                        setState(() {

                        });
                      },
                      child: const Text(
                        "Calculate BMI",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                ),
              ],
            ),
          ),
          Visibility(
            visible: isCalculated,
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(),
                     Text(bmiResult ?? "N/A",style: TextStyle(fontSize: 75,fontWeight: FontWeight.bold,color: Color(0xff0E8506)),),
                    // const Text("Normal"),
                    Container(
                      width: 300,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff092337),
                          ),
                          onPressed: () {
                            // Navigator.pushReplacement(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const BmiCalculatorPage()),
                            // );
                            isCalculated = true;
                            setState(() {

                            });
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          },
                          child: const Text(
                            "Get Workout Plan",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          )),
                    ),
                    const Spacer()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
