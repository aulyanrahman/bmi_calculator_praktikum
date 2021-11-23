import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColour      = Color(0xFF1D1E33);
const inactiveCardColour    = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({ Key? key }) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour  = inactiveCardColour;
  Color femaleCardColour  = inactiveCardColour;

  // 1 = Male, 2 = Female
  void updateColour(int gender)
  {
    if(gender == 1){
      if(maleCardColour == inactiveCardColour){
        maleCardColour = activeCardColour;
        femaleCardColour = inactiveCardColour;
      } else {
        maleCardColour = inactiveCardColour;
      }
    } else {
      if(femaleCardColour == inactiveCardColour){
        femaleCardColour = activeCardColour;
        maleCardColour = inactiveCardColour;
      } else {
        femaleCardColour = inactiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Widget Jenis Kelamin
          Expanded(child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    // print('Tombol Pilihan Laki-laki Ditekan!');
                    setState(() {
                      updateColour(1);
                    });
                  },
                  child: ReusableCard(
                    colour: maleCardColour,
                    height: 200.0,
                    width: 179.0,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    // print('Tombol Pilihan Perempuan Ditekan!');
                    setState(() {
                      updateColour(2);
                    });
                  },
                  child: ReusableCard(
                    colour: femaleCardColour,
                    height: 200.0,
                    width: 179.0,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus, 
                      label: 'FEMALE',
                    ),
                  ),
                ),
              ),
            ],
          )),
          // Widget Tinggi
          Expanded(child: Row(children: [
            Expanded(
              child: ReusableCard(
                colour: inactiveCardColour,
                height: 200.0,
                width: 179.0,
              ),
            ),
          ],)),
          // Widget Berat dan Umur
          Expanded(child: Row(children: [
            Expanded(
              child: ReusableCard(
                colour: inactiveCardColour,
                height: 200.0,
                width: 179.0,
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: inactiveCardColour,
                height: 200.0,
                width: 179.0,
              ),
            ),
          ],)),
          // Widget Tombol Hitung
          Container(
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      )
    );
  }
}