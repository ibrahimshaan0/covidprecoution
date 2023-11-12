import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class testHomePage extends StatefulWidget {
  const testHomePage({super.key});

  @override
  State<testHomePage> createState() => _testHomePageState();
}

class _testHomePageState extends State<testHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Precausion for Covid 19"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            covidPrecautionItems('assets/images/wearMask.jpg','Always wear mask when you are going out!!'),
            covidPrecautionItems('assets/images/washHand.jpg','Wash your hands regularly with soap and water, or clean them with alcohol based hand rub!'),
            covidPrecautionItems('assets/images/sanitize.jpg', 'Sanitize your peripherals regularly!'),
            covidPrecautionItems('assets/images/distance.jpg', 'Maintain at least 1.5 meter distance between you and people coughing or sneezing!'),
            covidPrecautionItems('assets/images/dontTouchFace.jpg', 'Avoid toughing your face!'),
            covidPrecautionItems('assets/images/sneezing.jpg', 'Cover your mouth and nose when coughing and sneezing!'),
            covidPrecautionItems('assets/images/stayHome.jpg', 'Stay at home if you feel unwell!'),
            // SizedBox(),
            // Image.asset('assets/images/img.jpg')
          ],
        ),
        
      ),
    );
  }
}
Widget covidPrecautionItems(String imagePath,String innterText,){
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
          colors: [Color(0xFFFFFFFF),Color(0x110000FF)],
        )
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
        leading: Image.asset(
          imagePath,
          width: 60,
        ) ,
        title: Text(innterText),
      ),
  );
}
