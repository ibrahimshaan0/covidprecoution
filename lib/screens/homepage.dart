import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Precausion for Covid 19"),
        centerTitle: true,
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
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(vertical: 16),
    leading: Image.asset(
        imagePath,
        width: 60,
    ) ,
    title: Text(innterText),
  );
}
