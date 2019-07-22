import 'package:flutter/material.dart';
import 'package:flutter_app/ComboCharts/scatter_plot_line.dart';

import 'package:flutter_app/TimeSeriesCharts/simple_time_series_chart.dart';

import 'date_time_line_point.dart';
import 'numeric_line_point.dart';
import 'ordinal_bar_line.dart';

class ComboChartMain extends StatefulWidget {
  ComboChartMain({Key key,}) : super(key: key);


  @override
  _ComboChartMainState createState() => _ComboChartMainState();
}

class _ComboChartMainState extends State<ComboChartMain> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: <Widget>[

            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("时间线组合"),
            ),

            Container(
              height: 300,
              child:   new DateTimeComboLinePointChart.withSampleData() ,
            ),


            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("条形图和线"),
            ),

            Container(
              height: 300,
              child: new  OrdinalComboBarLineChart.withSampleData() ,
            ),



            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("数字线条"),
            ),

            Container(
              height: 300,
              child: new  NumericComboLinePointChart.withSampleData() ,
            ),



            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("散点线图"),
            ),

            Container(
              height: 300,
              child: new ScatterPlotComboLineChart.withSampleData() ,
            ),







          ],
        )


    );
  }
}
