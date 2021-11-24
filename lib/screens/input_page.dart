import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator_praktikum_k/constant.dart';

enum Gender {male, female}

class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;
  int height = 180;
  int weight = 30;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          // Widget Jenis Kelamin
          Expanded(child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                  colour: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus, 
                    label: 'FEMALE',
                  ),
                  colour: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                ),
              ),
            ],
          )),

          // Widget Tinggi
          Expanded(child: ReusableCard(
            colour: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'HEIGHT',
                  style: kLabelStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: kNumberTextStyle,
                    ),
                    Text(
                      'CM',
                      style: kLabelStyle,
                    )
                  ]
                )
              ],
            ),
          )),

          // Widget Berat dan Umur
          Expanded(child: Row(children: [
            Expanded(
              child: ReusableCard(
                colour: kInactiveCardColor,
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kInactiveCardColor,
              ),
            ),
          ],)),

          // Widget Tombol Hitung
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      )
    );
  }
}