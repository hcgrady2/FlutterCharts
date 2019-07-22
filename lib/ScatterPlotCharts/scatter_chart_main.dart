import 'package:flutter/material.dart';
import 'package:flutter_app/ScatterPlotCharts/simple.dart';
import 'package:flutter_app/TimeSeriesCharts/range_annotation.dart';
import 'package:flutter_app/TimeSeriesCharts/simple_time_series_chart.dart';
import 'package:flutter_app/TimeSeriesCharts/symbol_annotation.dart';

import 'animation_zoom.dart';
import 'bucketing_axis.dart';
import 'comparison_points.dart';

class ScatterChartMain extends StatefulWidget {
  ScatterChartMain({Key key,}) : super(key: key);


  @override
  _ScatterChartMainState createState() => _ScatterChartMainState();
}

class _ScatterChartMainState extends State<ScatterChartMain> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: <Widget>[

            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("简单散点图"),
            ),

            Container(
              height: 300,
              child:   new SimpleScatterPlotChart.withSampleData() ,
            ),



            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("支持缩放"),
            ),

            Container(
              height: 300,
              child:   new ScatterPlotAnimationZoomChart.withSampleData() ,
            ),





            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("点对比"),
            ),

            Container(
              height: 300,
              child:   new  ComparisonPointsScatterPlotChart.withSampleData(),
            ),




            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("桶型"),
            ),

            Container(
              height: 300,
              child:   new BucketingAxisScatterPlotChart.withSampleData() ,
            ),








          ],
        )


    );
  }
}
