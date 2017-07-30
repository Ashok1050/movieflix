package springmvc_example.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import springmvc_example.model.Movies;
import springmvc_example.service.MovieService;
import springmvc_example.service.UserService;

@Controller
@RequestMapping(value="/")
public class LoginController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	MovieService movieservice;

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView login(@RequestParam(value="error", required = false) String error){
		ModelAndView model = new ModelAndView();
		
		if(error != null){
			model.addObject("error","the username or password is incorrect!");
		}
		
		model.setViewName("login/login");
		return model;
	}
	
	@RequestMapping(value={"/","/home"}, method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView home(){
		ModelAndView model = new ModelAndView();
		model.setViewName("home/home");
		model.addObject("movieList",movieservice.getmovies("featured"));
		
		return model;
	}
	
	@RequestMapping(value="/homeSorted", method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView homeSorted(@RequestParam(value="sortVal", required = false) String sortVal){
		ModelAndView model = new ModelAndView();
		model.setViewName("home/home");
		model.addObject("movieList",movieservice.getmovies(sortVal));
		
		return model;
	}
	
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response){
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth != null){
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		
		return "redirect:/login";
	}
	
	@RequestMapping(value="/accessDenied", method=RequestMethod.GET)
	public ModelAndView accessDenied(){
		ModelAndView model = new ModelAndView();
		model.setViewName("errors/access_denied");
		return model;
	}
	
}
