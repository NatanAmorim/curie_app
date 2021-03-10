import 'package:curie/models/users.dart';

class UsersRoles {
  final int userRolePK;
  final Users userRoleCreatedBy;
  final DateTime userRoleCreatedAt;
  final Users userRoleLastModifiedBy;
  final DateTime userRoleLastModifiedAt;
  //
  final bool userRoleCanAdd;
  final bool userRoleCanDelete;
  final bool userRoleCanUpdate;

  UsersRoles(
      this.userRolePK,
      this.userRoleCreatedBy,
      this.userRoleCreatedAt,
      this.userRoleLastModifiedBy,
      this.userRoleLastModifiedAt,
      this.userRoleCanAdd,
      this.userRoleCanDelete,
      this.userRoleCanUpdate);
}
