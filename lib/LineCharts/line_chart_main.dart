import 'package:flutter/material.dart';
import 'package:flutter_app/BarCharts/grouped_bar_chart.dart';
import 'package:flutter_app/BarCharts/simple_bar_chart.dart';
import 'package:flutter_app/LineCharts/points.dart';
import 'package:flutter_app/LineCharts/simple.dart';
import 'package:flutter_app/TimeSeriesCharts/range_annotation.dart';
import 'package:flutter_app/TimeSeriesCharts/simple_time_series_chart.dart';
import 'package:flutter_app/TimeSeriesCharts/symbol_annotation.dart';

import 'animation_zoom.dart';
import 'area_and_line.dart';
import 'dash_pattern.dart';

class LineChartMain extends StatefulWidget {
  LineChartMain({Key key,}) : super(key: key);


  @override
  _LineChartMainState createState() => _LineChartMainState();
}

class _LineChartMainState extends State<LineChartMain> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: <Widget>[

            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("简单折现图"),
            ),

            Container(
              height: 300,
              child:   new SimpleLineChart.withSampleData() ,
            ),



            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("带点"),
            ),

            Container(
              height: 300,
              child:   new PointsLineChart.withSampleData(),
            ),




            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("区域折现图"),
            ),

            Container(
              height: 300,
              child:   new  AreaAndLineChart.withSampleData(),
            ),




            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("支持缩放"),
            ),

            Container(
              height: 300,
              child:   new   LineAnimationZoomChart.withSampleData(),
            ),



            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("带虚线"),
            ),

            Container(
              height: 300,
              child:   new   DashPatternLineChart.withSampleData() ,
            ),







          ],
        )


    );
  }
}
