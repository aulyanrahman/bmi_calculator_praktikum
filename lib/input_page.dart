import 'package:flutter/material.dart';

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
                colour: Color(0xFF1D1E33),
                height: 200.0,
                width: 179.0,
              ),
              ),
              Expanded(
                child: ReusableCard(
                colour: Color(0xFF1D1E33),
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
                colour: Color(0xFF1D1E33),
                height: 200.0,
                width: 179.0,
              ),
            ),
          ],)),
          // Widget Berat dan Umur
          Expanded(child: Row(children: [
            Expanded(
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
                height: 200.0,
                width: 179.0,
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
                height: 200.0,
                width: 179.0,
              ),
            ),
          ],)),
          // Widget Tombol Hitung
          Expanded(child: Row(children: [
            Expanded(
              child: ReusableCard(
                colour: Color(0xFF1D1E33),
                height: 200.0,
                width: 179.0,
              ),
            ),
          ],))
        ],
      )
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.height, required this.width});
  
  Color colour;
  double height, width;
  @override
  Widget build(BuildContext context) {
    return Container(
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