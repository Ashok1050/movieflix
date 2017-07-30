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
import springmvc_example.model.Movies;
import springmvc_example.model.UserInfo;
import springmvc_example.service.MovieService;
import springmvc_example.service.UserService;
import springmvc_example.validator.SignupVaildator;

@Controller
@RequestMapping("/movies")
public class MoviesController {
	
	@Autowired
	MovieService movieservice;
	
	@RequestMapping(value="/editMovie/{id}")  
    public ModelAndView edit(@PathVariable int id){  
        
        ModelAndView model = new ModelAndView();
		model.setViewName("home/editmovie");
		model.addObject("movieValue",movieservice.getmovieById(id));
		
		return model;
    }
	
	@RequestMapping(value = "/saveMovie", method = RequestMethod.POST)
    public ModelAndView saveEmployee(@ModelAttribute Movies movie) {
        /*if (employee.getId() == 0) { // if employee id is 0 then creating the
            // employee other updating the employee
            employeeService.addEmployee(employee);
        } else {*/
			movieservice.updateMovie(movie);
        /*}*/
        return new ModelAndView("redirect:/home");
    }
	
}
