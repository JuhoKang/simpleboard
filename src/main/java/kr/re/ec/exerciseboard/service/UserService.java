package kr.re.ec.exerciseboard.service;

import java.util.List;

import kr.re.ec.exerciseboard.model.User;

public interface UserService {

  User findById(int id);

  User findBySso(String ssoId);

  void saveUser(User user);

  void deleteUserById(int id);

  List<User> findAllUsers();

  boolean isSsoUnique(Integer id, String ssoId);

  void setUserAuth(String ssoId, String auth);

  void changeUserPassword(User user);

  void updateUser(User user);

}
