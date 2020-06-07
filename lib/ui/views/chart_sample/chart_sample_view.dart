import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';
import 'package:stacked/stacked.dart';
import 'chart_sample_view_model.dart';

class ChartSampleView extends StatelessWidget {
  const ChartSampleView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChartSampleViewModel>.reactive(
      builder: (context, model, child) => Container(
        child: Echarts(
          option: '''
              {
                xAxis: {
                  type: 'category',
                  data: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13']
                },
                yAxis: {
                  type: 'value'
                },
                series: [{
                  data: [820, 932, 901, 934, 1290, 1330, 1320, 932, 901, 934, 1290, 1330, 1320],
                  type: 'line'
                }]
              }
            ''',
        ),
        padding: EdgeInsets.only(bottom: 60),
      ),
      viewModelBuilder: () => ChartSampleViewModel(),
    );
  }
}
