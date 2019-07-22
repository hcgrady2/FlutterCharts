import 'package:flutter/material.dart';

import 'package:flutter_app/Behaviors/selection_line_highlight.dart';
import 'package:flutter_app/Behaviors/slider.dart';
import 'package:flutter_app/Behaviors/sliding_viewport_on_selection.dart';

import 'initial_hint_animation.dart';
import 'selection_bar_highlight.dart';

class BehaviorsChartMain extends StatefulWidget {
  BehaviorsChartMain({Key key,}) : super(key: key);


  @override
  _BehaviorsChartMainState createState() => _BehaviorsChartMainState();
}

class _BehaviorsChartMainState extends State<BehaviorsChartMain> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: ListView(
          children: <Widget>[

            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("选择高亮"),
            ),

            Container(
              height: 300,
              child:   new  SelectionBarHighlight.withRandomData(),
            ),


            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("带拖动"),
            ),

            Container(
              height: 300,
              child:  new SelectionLineHighlight.withRandomData(),
            ),



            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("滑动线性图"),
            ),

            Container(
                height: 300,
                child:  new SliderLine.withRandomData(),
            ),


            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("中心选择区域"),
            ),

            Container(
              height: 300,
              child:  new SlidingViewportOnSelection.withRandomData(),
            ),


            Container(
              margin: EdgeInsets.only(top: 20,bottom: 20),
              alignment: Alignment.center,
              child: Text("带动画"),
            ),

            Container(
              height: 300,
              child: new InitialHintAnimation.withRandomData(),
            ),

          ],
        )


    );
  }
}
