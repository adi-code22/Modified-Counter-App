import 'package:bloc_counterapp/core/exception/route_exception.dart';
import 'package:bloc_counterapp/presentation/screens/counter_screen/counter_screen.dart';
import 'package:bloc_counterapp/presentation/screens/kabita_comminty/kabita_test.dart';
import 'package:bloc_counterapp/presentation/screens/sanams_community/sanam.dart';
import 'package:bloc_counterapp/presentation/screens/shiplas_community/shilpa.dart';
import 'package:bloc_counterapp/presentation/screens/shwetabhs_community/shwetabh.dart';
import 'package:bloc_counterapp/presentation/screens/vaibhavs_community/vaibhav.dart';
import 'package:flutter/material.dart';
import 'package:bloc_counterapp/presentation/screens/ankurs_community/ankurs_community.dart';

class AppRouter {
  static const String home = 'counter';
  static const String ankur = 'ankur';
  static const String kabita = 'kabita';
  static const String sanam = 'sanam';
  static const String shilpa = 'shilpa';
  static const String shwetabh = 'shwetabh';
  static const String vaibhav = 'vaibhav';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => Counter());
      case ankur:
        return MaterialPageRoute(builder: (_) => Ankur());
      case kabita:
        return MaterialPageRoute(builder: (_) => Kabita());
      case sanam:
        return MaterialPageRoute(builder: (_) => Sanam());
      case shilpa:
        return MaterialPageRoute(builder: (_) => Shilpa());
      case shwetabh:
        return MaterialPageRoute(builder: (_) => Shwetabh());
      case vaibhav:
        return MaterialPageRoute(builder: (_) => Vaibhav());

      default:
        throw const RouteException('Route not found!');
    }
  }
}
