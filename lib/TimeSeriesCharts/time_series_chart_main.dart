import 'package:flutter/material.dart';
import 'package:flutter_app/BarCharts/grouped_bar_chart.dart';
import 'package:flutter_app/BarCharts/simple_bar_chart.dart';
import 'package:flutter_app/TimeSeriesCharts/range_annotation.dart';
import 'package:flutter_app/TimeSeriesCharts/simple_time_series_chart.dart';
import 'package:flutter_app/TimeSeriesCharts/symbol_annotation.dart';

class TimeSeriesChartMain extends StatefulWidget {
  TimeSeriesChartMain({Key key,}) : super(key: key);


  @override
  _TimeSeriesChartMainState createState() => _TimeSeriesChartMainState();
}

class _TimeSeriesChartMainState extends State<TimeSeriesChartMain> {


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



            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("范围注释"),
            ),

            Container(
              height: 300,
              child:   new TimeSeriesRangeAnnotationChart.withSampleData(),
            ),




            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("符号注释"),
            ),

            Container(
              height: 300,
              child:   new TimeSeriesSymbolAnnotationChart.withSampleData(),
            ),




          ],
        )


    );
  }
}
