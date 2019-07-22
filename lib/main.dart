import 'package:flutter/material.dart';
import 'package:flutter_app/BarCharts/simple_bar_chart.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'Axes/axes_chart_main.dart';
import 'BarCharts/bar_charts_main.dart';
import 'Behaviors/behaviors_chart_main.dart';
import 'ComboCharts/combo_chart_main.dart';
import 'Legends/legends_chart_main.dart';
import 'LineCharts/line_chart_main.dart';
import 'PieCharts/pie_charts_main.dart';
import 'ScatterPlotCharts/scatter_chart_main.dart';
import 'TimeSeriesCharts/time_series_chart_main.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Charting library demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[

          FlatButton(
            child: Text("条形图"),
            onPressed: (){
              Navigator.push(context,
                  PageRouteBuilder(
                      transitionDuration: Duration(microseconds: 100),
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondaryAnimation) {
                        return new FadeTransition(
                            opacity: animation,
                            child: BarChartsMain()
                        );
                      })
              );
            },
          ),


          FlatButton(
            child: Text("时间序列图"),
            onPressed: (){
              Navigator.push(context,
                  PageRouteBuilder(
                      transitionDuration: Duration(microseconds: 100),
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondaryAnimation) {
                        return new FadeTransition(
                            opacity: animation,
                            child: TimeSeriesChartMain()
                        );
                      })
              );
            },
          ),


          FlatButton(
            child: Text("折线图"),
            onPressed: (){

              Navigator.push(context,
                  PageRouteBuilder(
                      transitionDuration: Duration(microseconds: 100),
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondaryAnimation) {
                        return new FadeTransition(
                            opacity: animation,
                            child: LineChartMain()
                        );
                      })
              );

            },
          ),

          FlatButton(
            child: Text("散点图标"),
            onPressed: (){
              Navigator.push(context,
                  PageRouteBuilder(
                      transitionDuration: Duration(microseconds: 100),
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondaryAnimation) {
                        return new FadeTransition(
                            opacity: animation,
                            child: ScatterChartMain()
                        );
                      })
              );
            },
          ),


          FlatButton(
            child: Text("组合图表"),
            onPressed: (){
              Navigator.push(context,
                  PageRouteBuilder(
                      transitionDuration: Duration(microseconds: 100),
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondaryAnimation) {
                        return new FadeTransition(
                            opacity: animation,
                            child: ComboChartMain()
                        );
                      })
              );
            },
          ),

          FlatButton(
            child: Text("饼状图"),
            onPressed: (){

              Navigator.push(context,
                  PageRouteBuilder(
                      transitionDuration: Duration(microseconds: 100),
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondaryAnimation) {
                        return new FadeTransition(
                            opacity: animation,
                            child: PieChartMain()
                        );
                      })
              );

            },
          ),

          FlatButton(
            child: Text("使用坐标轴"),
            onPressed: (){


              Navigator.push(context,
                  PageRouteBuilder(
                      transitionDuration: Duration(microseconds: 100),
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondaryAnimation) {
                        return new FadeTransition(
                            opacity: animation,
                            child: AxesChartMain()
                        );
                      })
              );


            },
          ),


          FlatButton(
            child: Text("示例图表"),
            onPressed: (){


              Navigator.push(context,
                  PageRouteBuilder(
                      transitionDuration: Duration(microseconds: 100),
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondaryAnimation) {
                        return new FadeTransition(
                            opacity: animation,
                            child: LegendsChartMain()
                        );
                      })
              );

            },
          ),


          FlatButton(
            child: Text("行为"),
            onPressed: (){


              Navigator.push(context,
                  PageRouteBuilder(
                      transitionDuration: Duration(microseconds: 100),
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondaryAnimation) {
                        return new FadeTransition(
                            opacity: animation,
                            child: BehaviorsChartMain()
                        );
                      })
              );


            },
          ),



        ],
      )

     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
