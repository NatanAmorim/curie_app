import 'package:curie_desktop/src/models/users.dart';

class UsersPreferences {
  final int userPreferencePK;
  final bool userPreferenceDarkTheme;
  final Users user;

  UsersPreferences(
      this.userPreferencePK, this.userPreferenceDarkTheme, this.user);
}
