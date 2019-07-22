import 'package:flutter/material.dart';
import 'package:flutter_app/TimeSeriesCharts/range_annotation.dart';
import 'package:flutter_app/TimeSeriesCharts/simple_time_series_chart.dart';
import 'package:flutter_app/TimeSeriesCharts/symbol_annotation.dart';

class LegendsChartMain extends StatefulWidget {
  LegendsChartMain({Key key,}) : super(key: key);


  @override
  _LegendsChartMainState createState() => _LegendsChartMainState();
}

class _LegendsChartMainState extends State<LegendsChartMain> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: <Widget>[

            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("简单时间序列图标"),
            ),

            Container(
              height: 300,
              child:   new SimpleTimeSeriesChart.withSampleData(),
            ),




          ],
        )


    );
  }
}
