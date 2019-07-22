import 'package:flutter/material.dart';
import 'package:flutter_app/BarCharts/grouped_bar_chart.dart';
import 'package:flutter_app/BarCharts/simple_bar_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'HorizontalPatternForwardHatchBarChart.dart';



class BarChartsMain extends StatefulWidget {
  BarChartsMain({Key key,}) : super(key: key);


  @override
  _BarChartsMainState createState() => _BarChartsMainState();
}

class _BarChartsMainState extends State<BarChartsMain> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: <Widget>[

           Container(
             margin: EdgeInsets.only(top: 20,bottom: 20),
             alignment: Alignment.center,
             child: Text("简单条形图"),
           ),

            Container(
              height: 300,
              child:   new SimpleBarChart.withSampleData(),
            ),



           Container(
             margin: EdgeInsets.only(top: 20,bottom: 20),
             alignment: Alignment.center,
             child: Text("分组对比条形图"),
           ),

           Container(
             height: 300,
             child:   new GroupedBarChart.withRandomData(),
           ),


           Container(
             margin: EdgeInsets.only(top: 20,bottom: 20),
             alignment: Alignment.center,
             child: Text("水平条形图"),
           ),

           Container(
             height: 300,
             child:    new HorizontalPatternForwardHatchBarChart.withRandomData(),
           ),


          ],
        )


    );
  }
}
