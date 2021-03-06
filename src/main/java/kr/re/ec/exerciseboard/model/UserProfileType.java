package kr.re.ec.exerciseboard.model;

public enum UserProfileType {
  USER("USER"), ADMIN("ADMIN"), DBA("DBA");

  String userProfileType;

  private UserProfileType(String userProfileType) {
    this.userProfileType = userProfileType;
  }

  public String getUserProfileType() {
    return userProfileType;
  }

}
