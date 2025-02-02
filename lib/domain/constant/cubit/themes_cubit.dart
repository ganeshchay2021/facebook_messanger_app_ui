import 'package:flutter_bloc/flutter_bloc.dart';

part 'themes_state.dart';

class ThemesCubit extends Cubit<ThemesState> {
  ThemesCubit() : super(LightThemeState());

  void toggledTheme(){
    if(state is LightThemeState){
      emit(DarkThemeState());
    }else{
      emit(LightThemeState());
    }
  }
}
