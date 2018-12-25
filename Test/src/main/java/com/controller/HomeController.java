package com.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.nio.file.attribute.UserPrincipalLookupService;

import javax.servlet.http.HttpServletRequest;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.DaoImpl.CategoryDaoImpl;
import com.DaoImpl.ProductDaoImpl;
import com.DaoImpl.SupplierDaoImpl;
import com.DaoImpl.UserDaoImpl;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;
import com.model.User;
import com.sun.org.glassfish.gmbal.ManagedAttribute;

@Controller
public class HomeController {
	
	@Autowired
	UserDaoImpl userDaoImpl;
	
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	
	@Autowired
	ProductDaoImpl productDaoImpl;
	
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	
	@RequestMapping("/")
	public String Home()
	{
	return "Home";
	}
	@RequestMapping(value= {"/home"})
	public String home()
	{
	return "Home";
	}
	@RequestMapping(value= {"/about"})
	public String about() {
		return "about";
	}
	@RequestMapping(value= {"/laptop"})
	public String laptop() {
		return "laptop";
	}
	@RequestMapping(value= {"/watch"})
	public String watch() {
		return "Watches";
	}
	
	@RequestMapping(value= {"/Contact_Us"})
	public String ContactUs() {
		return "Contact Us";
	}
	@RequestMapping(value= {"/payment"})
	public String pay() {
		return "payment";
	}

	@RequestMapping(value="/Registration", method = RequestMethod.GET)
	public ModelAndView showRegister()
	{
		ModelAndView mav = new ModelAndView();
		mav.addObject("user", new User());
		//mav.setViewName("Registration"); 
		return mav;
		
	}
	
	
	/*@RequestMapping(value="\register",method=RequestMethod.POST)
		public ModelAndView saveRegdata(@ModelAttribute("user") User user ) {
		
		ModelAndView view = new ModelAndView();
		userDaoImpl.insertUser(user);
		view.setViewName("Registration");
		return view;
	}*/
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public ModelAndView saveRegdata(HttpServletRequest request,User user) {
		  
		ModelAndView modelAndView = new ModelAndView();
		user.setFirst_name(request.getParameter("first_name"));
		user.setLast_name(request.getParameter("last_name"));
		user.setDob(request.getParameter("dob"));
		user.setUser_name(request.getParameter("user_name"));
		user.setUser_password(request.getParameter("user_password"));
		user.setConfirn_password(request.getParameter("confirn_password"));
		user.setE_mail(request.getParameter("e_mail"));
		user.setContact_no(request.getParameter("contact_no"));
	
		userDaoImpl.insertUser(user);
		modelAndView.setViewName("successful");
	return modelAndView;
	
}
	 
	@ModelAttribute
	public void addAttribute(Model m)
	{
		m.addAttribute("user",userDaoImpl.retrieve());
		m.addAttribute("prodList",productDaoImpl.retrieve());
		m.addAttribute("catList", categoryDaoImpl.retrieve());
		m.addAttribute("satList", supplierDaoImpl.retrieve());
	}
	@RequestMapping(value= "/login",method=RequestMethod.POST)
	public String login(@RequestParam("EmailAddress") String uname,@RequestParam("password")String pass)
	{
		
		if(uname.equals("Admin@gmail.com") && pass.equals("1234")) {
			return "admin";
		
		}
		else  {
			
			ModelAndView view = new ModelAndView();
			User user=userDaoImpl.findById(uname);
			view.addObject("user", user);
			String uname1=user.getUser_name();
			System.out.println(uname1);
			String email = user.getE_mail();
			System.out.println(email);
			String password=user.getUser_password();
			System.out.println(password);
			if(uname.equals(uname1)|| uname.equals(email) && pass.equals(password)) {
				System.out.println(user.getFirst_name() + " " + user.getLast_name() + " Loged in");
				return "Home";
		}
		else {
			System.out.println("Error");
			return "error";
		}
		}
		 
	}
	@RequestMapping(value= {"/productlist"})
	public ModelAndView productcustList()
	{
		 
		ModelAndView mav = new ModelAndView();
		mav.addObject("productList", productDaoImpl.retrieve());
		mav.setViewName("productList");
		return mav;
	}
	@ModelAttribute
	public void addAttributes(Model m)
	{
		m.addAttribute("prodList",productDaoImpl.retrieve() );
	}
	
	
	 
	
	@RequestMapping(value="/saveCat", method=RequestMethod.POST)
	public ModelAndView saveCategory(@RequestParam("cid")int c_id, @RequestParam("name")String name)
	{
		ModelAndView mv = new ModelAndView();
		Category c = new Category();
		c.setC_Id(c_id);
		c.setName(name);
		categoryDaoImpl.insertCategory(c);
		mv.setViewName("admin");
		return mv;
	}
	
	

	@RequestMapping(value="/saveSupp", method=RequestMethod.POST)
	public ModelAndView saveSupplier(@RequestParam("sid")int sid, @RequestParam("supplierName")String name)
	{
		ModelAndView mv = new ModelAndView();
		Supplier c = new Supplier();
		c.setSid(sid);
		c.setSupplierName(name);
		supplierDaoImpl.insertSupplier(c);
		mv.setViewName("admin");
		return mv;
	}
	
	@RequestMapping(value="/saveProduct", method=RequestMethod.POST)
	public String saveProduct(HttpServletRequest request,@RequestParam("file")MultipartFile file)
	{
		
		Product prod = new Product();
		
		prod.setName(request.getParameter("pName"));
		prod.setPrice(request.getParameter("pPrice"));
		prod.setDescription(request.getParameter("pDescription"));
		prod.setStock(Integer.parseInt(request.getParameter("pStock")));
		prod.setCategory(categoryDaoImpl.findById(Integer.parseInt(request.getParameter("pCategory"))));
		prod.setSupplier(supplierDaoImpl.findById(Integer.parseInt(request.getParameter("pSupplier"))));
		
		String filepath = request.getSession().getServletContext().getRealPath("/");
		
		String filename = file.getOriginalFilename();
		
		productDaoImpl.insertProduct(prod);
		
		try
		{
			byte imagebyte[] = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"/resources"+ filename));
			fos.write(imagebyte);
			fos.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "admin";

	}
	
	@RequestMapping(value= {"/producDetail"})
	public String pro()
	{
		return "productDetail";
	}
	 
	
	@RequestMapping(value="/productCustList", method=RequestMethod.GET)
	public ModelAndView gotoproductlist()
	{
		ModelAndView mv = new ModelAndView();
		mv.addObject("prodList", productDaoImpl.retrieve());
		mv.setViewName("ProductCustomerList");
		return mv;
	}
	
	 

	
	@RequestMapping(value="/addCart")
	public String Cart()
	{
		return "cart";
	}
}
