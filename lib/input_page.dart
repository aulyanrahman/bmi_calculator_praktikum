import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColour      = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({ Key? key }) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                child: ReusableCard(
                colour: activeCardColour,
                height: 200.0,
                width: 179.0,
              ),
              ),
              Expanded(
                child: ReusableCard(
                colour: activeCardColour,
                height: 200.0,
                width: 179.0,
              ),
              ),
            ],
          )),
          // Widget Tinggi
          Expanded(child: Row(children: [
            Expanded(
              child: ReusableCard(
                colour: activeCardColour,
                height: 200.0,
                width: 179.0,
              ),
            ),
          ],)),
          // Widget Berat dan Umur
          Expanded(child: Row(children: [
            Expanded(
              child: ReusableCard(
                colour: activeCardColour,
                height: 200.0,
                width: 179.0,
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: activeCardColour,
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

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.height, required this.width, this.cardChild});
  
  final Color colour;
  final Widget? cardChild;
  double height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: height,
      width: width,
    );
  }
}