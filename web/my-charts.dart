// Dart JS示例
// AntV可视化组件（https://antv.antfin.com/zh-cn/g2/3.x/demo/pie/color-rose.html#）
// Dart JS文档（https://api.dart.cn/stable/2.16.2/dart-js/dart-js-library.html）

import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus = querySelector('#hint') as DivElement;
  dartStatus.text = '信息学院各学科人数';

  var myData = JsObject.jsify([
    {'专业': '计科', 'count': 80},
    {'专业': '通信', 'count': 40},
    {'专业': '智科', 'count': 30},
    {'专业': '电子', 'count': 40},
  ]);

  var chart = context['chart'];
  chart.callMethod('source', [myData]);
  chart.callMethod('render', []);
}
