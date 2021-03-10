import 'package:curie/models/users.dart';

class UsersPreferences {
  final int userPreferencePK;
  final bool userPreferenceDarkTheme;
  final Users user;

  UsersPreferences(
      this.userPreferencePK, this.userPreferenceDarkTheme, this.user);
}
