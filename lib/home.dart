import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messanger_app_ui/domain/constant/cubit/themes_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme"),
        actions: [
          IconButton(
            onPressed: () {
              context.read<ThemesCubit>().toggledTheme();
            },
            icon: const Icon(
              Icons.dark_mode_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
