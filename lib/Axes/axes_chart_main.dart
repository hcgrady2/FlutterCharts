import 'package:flutter/material.dart';
import 'package:flutter_app/BarCharts/grouped_bar_chart.dart';
import 'package:flutter_app/BarCharts/simple_bar_chart.dart';
import 'package:flutter_app/TimeSeriesCharts/range_annotation.dart';
import 'package:flutter_app/TimeSeriesCharts/simple_time_series_chart.dart';
import 'package:flutter_app/TimeSeriesCharts/symbol_annotation.dart';

import 'custom_axis_tick_formatters.dart';

class AxesChartMain extends StatefulWidget {
  AxesChartMain({Key key,}) : super(key: key);


  @override
  _AxesChartMainState createState() => _AxesChartMainState();
}

class _AxesChartMainState extends State<AxesChartMain> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("自定义格式"),
            ),

            Container(
              height: 300,
              child:   new  CustomAxisTickFormatters.withRandomData(),
            ),




          ],
        )


    );
  }
}
