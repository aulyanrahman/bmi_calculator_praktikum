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
                child: ReusableCard(),
              ),
              Expanded(
                child: ReusableCard(),
              ),
            ],
          )),
          // Widget Tinggi
          Expanded(child: Row(children: [
            Expanded(
              child: ReusableCard(),
            ),
          ],)),
          // Widget Berat dan Umur
          Expanded(child: Row(children: [
            Expanded(
              child: ReusableCard(),
            ),
            Expanded(
              child: ReusableCard(),
            ),
          ],)),
          // Widget Tombol Hitung
          Expanded(child: Row(children: [
            Expanded(
              child: ReusableCard(),
            ),
          ],))
        ],
      )
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 200.0,
      width: 179.0,
    );
  }
}