import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injector.dart';
import '../blocs/schedule/schedule_cubit.dart';

class ScheduleWrapperPage extends StatelessWidget {
  const ScheduleWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ScheduleCubit>(),
      child: const AutoRouter(),
    );
  }
}
