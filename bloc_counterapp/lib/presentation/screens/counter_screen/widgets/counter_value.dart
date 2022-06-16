import 'package:animate_do/animate_do.dart';
import 'package:bloc_counterapp/logic/cubit/counter_cubit/counter_cubit.dart';
//import 'package:bloc_architecture_app/logic/cubit/counter_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class CounterValue extends StatefulWidget {
  const CounterValue({
    Key key,
  }) : super(key: key);

  @override
  _CounterValueState createState() => _CounterValueState();
}

class _CounterValueState extends State<CounterValue> {
  AnimationController _animationController;

  @override
  Widget build(BuildContext context) {
    _animationController?.forward(from: 0.0);
    return ZoomIn(
      duration: Duration(milliseconds: 400),
      manualTrigger: true,
      controller: (controller) => _animationController = controller,
      child: Text(
        context.select(
            (CounterCubit cubit) => cubit.state.counterValue.toString()),
        style: TextStyle(fontSize: 60.0.sp, fontWeight: FontWeight.bold),
      ),
    );
  }
}
