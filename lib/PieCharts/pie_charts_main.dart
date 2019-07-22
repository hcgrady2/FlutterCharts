import 'package:flutter/material.dart';
import 'package:flutter_app/BarCharts/grouped_bar_chart.dart';
import 'package:flutter_app/BarCharts/simple_bar_chart.dart';
import 'package:flutter_app/PieCharts/simple.dart';
import 'package:flutter_app/TimeSeriesCharts/range_annotation.dart';
import 'package:flutter_app/TimeSeriesCharts/simple_time_series_chart.dart';
import 'package:flutter_app/TimeSeriesCharts/symbol_annotation.dart';

import 'auto_label.dart';
import 'donut.dart';
import 'outside_label.dart';

class PieChartMain extends StatefulWidget {
  PieChartMain({Key key,}) : super(key: key);


  @override
  _PieChartMainState createState() => _PieChartMainState();
}

class _PieChartMainState extends State<PieChartMain> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: <Widget>[

            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("简单饼状图"),
            ),

            Container(
              height: 300,
              child:   new SimplePieChart.withSampleData() ,
            ),



            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("外部标签"),
            ),

            Container(
              height: 300,
              child:   new  PieOutsideLabelChart.withSampleData(),
            ),




            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("甜甜圈形状"),
            ),

            Container(
              height: 300,
              child:   new DonutPieChart.withSampleData() ,
            ),



            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("自动标签"),
            ),

            Container(
              height: 300,
              child:   new DonutAutoLabelChart.withSampleData() ,
            ),








          ],
        )


    );
  }
}
