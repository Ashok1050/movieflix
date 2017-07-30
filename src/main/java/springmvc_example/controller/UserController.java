package springmvc_example.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import springmvc_example.form.UserForm;
import springmvc_example.model.UserInfo;
import springmvc_example.service.UserService;
import springmvc_example.validator.SignupVaildator;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	SignupVaildator signupVaildator;

	@Autowired
	UserService userService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView list(){
		ModelAndView model = new ModelAndView("user/list");
		model.addObject("list", userService.list());
		
		return model;
	}
	
	@RequestMapping(value="/changepass/{username}", method=RequestMethod.GET)
	public ModelAndView changePass(@PathVariable("username") String username){
		ModelAndView model = new ModelAndView("user/change_pass");
		model.addObject("user",userService.findUserByUsername(username));
		
		return model;
	}
	
	@RequestMapping(value="/save", method=RequestMethod.GET)
	public ModelAndView save(@ModelAttribute("user") UserInfo user){
		ModelAndView model = new ModelAndView("user/change_pass");
		userService.update(user.getUsername(), user.getPassword());
		model.addObject("msg", "Password change successful!");
		
		return model;
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public ModelAndView signup(){
		ModelAndView model = new ModelAndView("user/signup");
		model.addObject("userForm", new UserForm());
		
		return model;
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register(@ModelAttribute("userForm") UserForm userForm, BindingResult result, RedirectAttributes redirectAttributes){

		signupVaildator.validate(userForm, result);
		
		if(result.hasErrors()){
			return "/user/signup";
		}else{
			userService.add(userForm.getUsername(),userForm.getPassword());
			redirectAttributes.addFlashAttribute("msg","Your account has been created successfully!");
			
			return "redirect:/login";
			
		}
	}
}
