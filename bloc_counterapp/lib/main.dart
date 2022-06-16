import 'package:bloc_counterapp/core/theme/app_theme.dart';
import 'package:bloc_counterapp/logic/cubit/firestore_cubit/cubit/firestore_cubit.dart';

import 'package:bloc_counterapp/presentation/routes/app_router.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'logic/cubit/counter_cubit/counter_cubit.dart';

import 'package:path_provider/path_provider.dart';

import 'logic/cubit/theme_cubit/theme_cubit.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //await EasyLocalization.ensureInitialized();

  //Bloc.observer = AppBlocObserver();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory());
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      //BlocProvider<ThemeCubit>(create: (context) => ThemeCubit())
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
          child: Container(),
        ),
        BlocProvider<CounterCubit>(
          create: (context) => CounterCubit(),
          child: Container(),
        ),
        BlocProvider<FirestoreCubit>(
          create: (context) => FirestoreCubit(),
          child: Container(),
        )
      ],
      child: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({
    Key key,
  }) : super(key: key);

  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> with WidgetsBindingObserver {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addObserver(this);

    super.initState();
  }

  @override
  void didChangePlatformBrightness() {
    // TODO: implement didChangePlatformBrightness
    context.read<ThemeCubit>().updateAppTheme();
    super.didChangePlatformBrightness();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          SizerUtil().init(contraints, orientation);
          return MaterialApp(
            initialRoute: AppRouter.kabita,
            onGenerateRoute: AppRouter.onGenerateRoute,
            debugShowCheckedModeBanner: false,
            darkTheme: AppTheme.darkTheme,
            theme: AppTheme.lightTheme,
            themeMode: context
                .select((ThemeCubit themeCubit) => themeCubit.state.themeMode),
          );
        },
      );
    });
  }
}
