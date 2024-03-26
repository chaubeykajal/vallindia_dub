
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:vall_india/screens/homeScreen.dart';

class graphPresentation extends StatelessWidget {
  const graphPresentation({
    super.key,
    required this.height,
    required this.width,
    required TooltipBehavior tooltipBehavior,
    required List<RadialComponents> chartData, 
    // required this.mq,
  }) : _tooltipBehavior = tooltipBehavior, _chartData = chartData;

  // final Size mq;
  final TooltipBehavior _tooltipBehavior;
  final List<RadialComponents> _chartData;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:height ,
      child: Container(
        // height: ,
        width: width,
        color: Color.fromARGB(221, 253, 251, 251),
        child: 
        SfCircularChart(
          // title: ChartTitle(text:"Fund Raise"),
          // legend:Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
          tooltipBehavior: _tooltipBehavior,
          series: <CircularSeries>[
            RadialBarSeries<RadialComponents , String>(
              dataSource: _chartData,
              xValueMapper: (RadialComponents data,_)=> data.components,
              yValueMapper: (RadialComponents data,_) => data.total,
              pointColorMapper: (RadialComponents data ,_)=> data.color,
              useSeriesColor: true,
              trackOpacity: 0.3,
              dataLabelMapper:  (RadialComponents data, _) => data.components,
              enableTooltip: true,
              maximumValue: 100,
              radius:'85%',
              gap:'10%',
              innerRadius: '65%',
              cornerStyle: CornerStyle.endCurve,
            
              trackColor: const Color.fromARGB(255, 238, 193, 190),
            ),
        
          ],
        ),
      ),
    );
  }
}


