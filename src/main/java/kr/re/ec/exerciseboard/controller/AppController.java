package kr.re.ec.exerciseboard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import kr.re.ec.exerciseboard.model.User;
import kr.re.ec.exerciseboard.model.UserProfileType;
import kr.re.ec.exerciseboard.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class AppController {


  @Autowired
  UserService userService;

  @Autowired
  MessageSource messageSource;

  // root mapping
  @RequestMapping(method = RequestMethod.GET)
  public String homeRedirect(ModelMap model) {
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    if (!(auth instanceof AnonymousAuthenticationToken)) {
      return "redirect:" + "/index";
    } else {

    }

    return "redirect:" + "/login";
  }

  @RequestMapping(value = {"/test"}, method = RequestMethod.GET)
  public String test(ModelMap model) {
    User user = userService.findBySso(getUserName());
    model.addAttribute("user", user);

    userService.deleteUserById(user.getId());

    return "accessDenied";
  }

  @RequestMapping(value = {"/index"}, method = RequestMethod.GET)
  public String mainPage(ModelMap model) {
    User user = userService.findBySso(getUserName());
    model.addAttribute("user", user);
    return "index";
  }

  @RequestMapping(value = {"/signup"}, method = RequestMethod.GET)
  public String newUser(ModelMap model) {

    // redirect if logged in
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    if (!(auth instanceof AnonymousAuthenticationToken)) {
      return "redirect:" + "/index";
    }
    
    User user = new User();
    model.addAttribute("user", user);
    model.addAttribute("edit", false);
    return "signup";
  }

  // TODO
  @RequestMapping(value = {"/signup"}, method = RequestMethod.POST)
  public String saveUser(@Valid User user, BindingResult result, ModelMap model) {

    if (result.hasErrors()) {
      return "signup";
    }

    /*
     * Preferred way to achieve uniqueness of field [ssn] should be implementing custom @Unique
     * annotation and applying it on field [ssn] of Model class [Employee].
     * 
     * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors
     * outside the validation framework as well while still using internationalized messages.
     */
    if (!userService.isSsoUnique(user.getId(), user.getSsoId())) {
      FieldError ssnError = new FieldError("user", "ssoId", "이미존재하는 아이디입니다");
      result.addError(ssnError);
      return "userregistration";
    }

    userService.saveUser(user);
    System.out.println("UserProfile type is : " + UserProfileType.USER.toString());
    userService.setUserAuth(user.getSsoId(), UserProfileType.USER.toString());

    return "registsuccess";
  }


  @RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
  public String accessDeniedPage(ModelMap model) {
    User user = userService.findBySso(getUserName());
    model.addAttribute("user", user);
    return "accessDenied";
  }

  @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
  public String loginPage(ModelMap model) {

    // redirect if logged in
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    if (!(auth instanceof AnonymousAuthenticationToken)) {
      return "redirect:" + "/index";
    }
    
    return "login";
  }

  @RequestMapping(value = "/logout", method = RequestMethod.GET)
  public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    if (auth != null) {
      new SecurityContextLogoutHandler().logout(request, response, auth);
    }
    return "redirect:/login?logout";
  }

  private String getUserName() {
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    return auth.getName();
  }

}
