import 'package:bloc_counterapp/presentation/screens/counter_screen/widgets/counter_slider.dart';
import 'package:bloc_counterapp/presentation/screens/counter_screen/widgets/counter_value.dart';
import 'package:bloc_counterapp/presentation/screens/counter_screen/widgets/plasma_background.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
//import 'package:simple_animations/simple_animations.dart';
import 'package:sizer/sizer.dart';

class Counter extends StatefulWidget {
  Counter({Key key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Background(),
          Positioned(
            top: 80.0.h,
            left: 20.0.w,
            child: CounterSlider(),
          ),
          Positioned(
            top: 9.0.h,
            left: 14.0.w,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text('0'),
                Container(
                  height: 40.0.h,
                  width: 70.0.w,
                  child: FlareActor(
                    'assets/animation.flr',
                    animation: 'Alarm',
                    color: Theme.of(context).accentColor,
                  ),
                ),
                //CounterValue(),
              ],
            ),
          ),
          Positioned(
            top: 23.0.h,
            left: 43.0.w,
            child: GestureDetector(
              child: CounterValue(),
              onTap: () {
                Navigator.pushNamed(context, 'ankur');
              },
            ),
          )
        ],
      ),
    );
  }
}
