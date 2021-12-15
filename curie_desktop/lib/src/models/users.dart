import 'package:curie_desktop/src/models/users_roles.dart';

class Users {
  final int userPK;
  final String userName;
  final UsersRoles userRole;
  final String userEmail;
  final String userLogin;
  final String userPassword;
  final bool userBlocked;
  final DateTime userLastLoginDate;
  final Users userCreatedBy;
  final DateTime userCreatedAt;
  final Users userLastModifiedBy;
  final DateTime userLastModifiedAt;

  Users(
      this.userPK,
      this.userName,
      this.userRole,
      this.userEmail,
      this.userLogin,
      this.userPassword,
      this.userBlocked,
      this.userLastLoginDate,
      this.userCreatedBy,
      this.userCreatedAt,
      this.userLastModifiedBy,
      this.userLastModifiedAt);
}
