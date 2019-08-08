package com.techelevator.controller;

import javax.validation.Valid;

import org.omg.CosNaming.NamingContextExtPackage.StringNameHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.model.User;
import com.techelevator.model.MemberDAO;

@Controller
@SessionAttributes({"synergyUser"})
public class UserController {

	private MemberDAO userDAO;

	@Autowired
	public UserController(MemberDAO userDAO) {
		this.userDAO = userDAO;
	}

	@RequestMapping(path="/users/new", method=RequestMethod.GET)
	public String displayNewUserForm(ModelMap modelHolder) {
		if( ! modelHolder.containsAttribute("user")) {
			modelHolder.addAttribute("user", new User());
		}
		return "newUser";
	}
	
	@RequestMapping(path="/users", method=RequestMethod.POST)
	public String createUser(@Valid @ModelAttribute User user, BindingResult result, RedirectAttributes flash) {
		if(result.hasErrors()) {
			flash.addFlashAttribute("user", user);
			flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
			return "redirect:/users/new";
		}
		
		userDAO.saveMember(user.getUserName(), user.getPassword(), user.getName(), user.getEmail(), user.getWorkoutGoals(), user.getWorkoutProfile(), user.getAvatar());
		return "redirect:/login";
	}
	
	@RequestMapping(path="/users/{username}", method=RequestMethod.GET)
	public String userDashboard (@PathVariable String username, ModelMap map) {
		Object user = userDAO.getMemberByUserName(username);
		
		map.addAttribute("user", user);
		map.addAttribute("synergyUser", user);
		
		return "userDashboard";
	}
	
	@RequestMapping(path="/editProfile", method=RequestMethod.GET)
	public String displayEditProfile(ModelMap map) {
		User user = (User) map.get("synergyUser");
		
		map.addAttribute("synergyUser", user);
		return "/editProfile";
	}
	
	@RequestMapping(path="/updateProfile", method=RequestMethod.POST)
	public String userDashBoardUpdatedProfile (@RequestParam String workoutGoals, ModelMap map) {
		User user = (User) map.get("synergyUser");
		String userName = user.getUserName();
		
		userDAO.updateWorkoutGoals(workoutGoals, userName);
		
		map.addAttribute("user", user);
		map.addAttribute("synergyUser", user);
		
		return "redirect:/users/" + userName;
	}
	
	@RequestMapping(path="/calendar", method=RequestMethod.GET)
	public String calendar() {
		return "calendar";
	}
}
