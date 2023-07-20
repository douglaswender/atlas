import 'package:atlas/atlas.dart';
import 'package:bloc/bloc.dart';

part 'settings_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  AtlasDefaultTheme theme = AtlasTheme.t();
  ThemeCubit() : super(ThemeStateDefault());

  toggleTheme() {
    if (AtlasTheme.t().theme == 'default') {
      theme = AtlasTheme.t(brand: 'dark');
      emit(ThemeStateDark());
    } else {
      theme = AtlasTheme.t(brand: 'default');
      emit(ThemeStateDefault());
    }
  }
}
