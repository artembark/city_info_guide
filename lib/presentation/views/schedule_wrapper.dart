import 'package:auto_route/auto_route.dart';
import 'package:city_info_guide/domain/entities/schedule_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injector.dart';
import '../blocs/schedule_input/schedule_input_cubit.dart';

class ScheduleWrapperPage extends StatelessWidget {
  const ScheduleWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ScheduleInputCubit>()
        ..init(
          ScheduleRequest(
            date: DateTime.now().add(
              const Duration(days: 1),
            ),
          ),
        ),
      child: const AutoRouter(),
    );
  }
}
