package springproject.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import springproject.dao.ProductDao;
import springproject.dao.UserRegistraion;
import springproject.model.Product;
import springproject.model.User;

@Controller
public class MainController {

	@Autowired
	private ProductDao productDao;
	
	@Autowired
	private UserRegistraion userRegistraion;
	
	@RequestMapping("/")
	public String indexPage(Model model) {
		
		List<Product> products= productDao.getAllProducts();
		model.addAttribute("product", products);
		return "index";
	}
	@RequestMapping("/addProduct")
	public String addProduct(Model m) {
		m.addAttribute("title","Add Product");
		return "add_product_form";
	}


	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product);
		productDao.createProduct(product); // Ensure this line is present

		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	@RequestMapping("delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId, HttpServletRequest request) {
		
		productDao.deleteProduct(productId);
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
		
	}
	
	@RequestMapping("update/{productId}")
	public String UpdateProduct(@PathVariable("productId") int productId,Model model) {
		
		Product product = productDao.getSingleProduct(productId);
		model.addAttribute("product", product);
		return "update-form";
	}
	
	@RequestMapping("/contact")
	public String addUser(Model model) {
		model.addAttribute("title", "User Registration");
		return "contact";
	}
	
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public RedirectView addUser(@ModelAttribute User user ,HttpServletRequest request) {
		System.out.println(user);
		userRegistraion.addUser(user);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/contact");
		return redirectView;
		}
	
	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("title", "login-form");
		return "login";
	}
	
	@RequestMapping(value = "/login-cred", method = RequestMethod.POST)
	public RedirectView loginCred(@ModelAttribute User user,HttpServletRequest request) {
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/contact");
		return redirectView;
	}
}
