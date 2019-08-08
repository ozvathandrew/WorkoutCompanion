package com.techelevator.controller;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.techelevator.model.AdministratorDAO;
import com.techelevator.model.MemberDAO;
import com.techelevator.model.User;

@Controller
@SessionAttributes({ "synergyUser" })
public class UserController {

	private MemberDAO userDAO;
	private AdministratorDAO adminDAO;

	@Autowired
	public UserController(MemberDAO userDAO, AdministratorDAO adminDAO) {
		this.userDAO = userDAO;
		this.adminDAO = adminDAO;
	}

	@RequestMapping(path = "/users/new", method = RequestMethod.GET)
	public String displayNewUserForm(ModelMap modelHolder) {
		if (!modelHolder.containsAttribute("user")) {
			modelHolder.addAttribute("user", new User());
		}
		return "newUser";
	}

	@RequestMapping(path = "/users", method = RequestMethod.POST)
	public String createUser(@Valid @ModelAttribute User user, BindingResult result, RedirectAttributes flash) {
		if (result.hasErrors()) {
			flash.addFlashAttribute("user", user);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
			return "redirect:/users/new";
		}

		userDAO.saveMember(user.getUserName(), user.getPassword(), user.getName(), user.getEmail(),
				user.getWorkoutGoals(), user.getWorkoutProfile(), user.getAvatar());
		return "redirect:/login";
	}
<<<<<<< HEAD
	
	@RequestMapping(path="/users/{username}", method=RequestMethod.GET)
	public String userDashboard (@PathVariable String username, ModelMap map) {
=======

	@RequestMapping(path = "/users/{username}", method = RequestMethod.GET)
	public String userDashboard(@PathVariable String username, ModelMap map) {
		// Get chosen user from DB and add to the request object
>>>>>>> 4ca84b17c07c6bc6a4e974a32202140fbed080aa
		Object user = userDAO.getMemberByUserName(username);

		map.addAttribute("user", user);
		map.addAttribute("synergyUser", user);

		return "userDashboard";
	}

	@RequestMapping(path = "/editProfile", method = RequestMethod.GET)
	public String displayEditProfile(ModelMap map) {
		User user = (User) map.get("synergyUser");

		map.addAttribute("synergyUser", user);
		return "/editProfile";
	}

	@RequestMapping(path = "/updateProfile", method = RequestMethod.POST)
	public String userDashBoardUpdatedProfile(@RequestParam String workoutGoals, ModelMap map) {
		User user = (User) map.get("synergyUser");
		String userName = user.getUserName();

		userDAO.updateWorkoutGoals(workoutGoals, userName);

		map.addAttribute("user", user);
		map.addAttribute("synergyUser", user);

		return "redirect:/users/" + userName;
	}
<<<<<<< HEAD
	
	@RequestMapping(path="/calendar", method=RequestMethod.GET)
	public String calendar() {
		return "calendar";
=======

	@RequestMapping(path = "/addUser", method = RequestMethod.GET)
	public String displayAddUser(ModelMap map) {
		User user = (User) map.get("synergyUser");
		String userName = user.getUserName();
		
//		map.addAttribute("user", user);
		map.addAttribute("synergyUser", user);
		
		return "/addUser";
	}

	@RequestMapping(path = "/addNewUser", method = RequestMethod.POST)
	public String addNewUser(@Valid @ModelAttribute User user, BindingResult result, RedirectAttributes flash, ModelMap map) {
		if (result.hasErrors()) {
			flash.addFlashAttribute("user", user);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
			return "redirect:/addUser";
		}

		adminDAO.addEmployee(user.getUserName(), user.getPassword(), user.getName(), user.getEmail(),
				user.getWorkoutGoals(), user.getWorkoutProfile(), user.getAvatar(), user.getRoleId());

		User admin = (User) map.get("synergyUser");
		String adminName = admin.getUserName();
		
		return "redirect:/users/" + adminName;
>>>>>>> 4ca84b17c07c6bc6a4e974a32202140fbed080aa
	}
}
