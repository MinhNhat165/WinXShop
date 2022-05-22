package winx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import winx.entity.KhachHang;

@Transactional
@Controller
@RequestMapping("cart")
public class PageCartController extends CommonMethod {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String index(HttpSession ss, ModelMap model) {
		String maKH = (String) ss.getAttribute("maKH");
		if (maKH != null) {
			model.addAttribute("user", getCustomer(maKH));
		}
		return "user/cart";
	}

	@RequestMapping(value = "remove/{maSP}.htm")
	public String removeFormCart(HttpSession ss, HttpServletRequest request, ModelMap model,
			@PathVariable("maSP") String maSP, RedirectAttributes redirectAttributes) {
		String maKH = (String) ss.getAttribute("maKH");
		boolean isSuccess = removeFromCart(maSP, maKH);
		if (isSuccess) {
			redirectAttributes.addFlashAttribute("message",
					new Message("success", "Sản phẩm đã được xoá khỏi giỏ hàng"));

		} else
			redirectAttributes.addFlashAttribute("message", new Message("error", "Thêm thất bại"));

		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}

	@RequestMapping(value = "add/{maSP}.htm")
	public String addToCart(HttpServletRequest request, HttpSession ss, ModelMap model,
			@PathVariable("maSP") String maSP, RedirectAttributes redirectAttributes) {

		String maKH = (String) ss.getAttribute("maKH");
		boolean isSuccess = addToCart(maSP, maKH, Integer.parseInt(request.getParameter("add-number")));

		if (isSuccess) {

			redirectAttributes.addFlashAttribute("message",
					new Message("success", "Sản phẩm đã được thêm vào giỏ hàng"));

		} else
			redirectAttributes.addFlashAttribute("message", new Message("error", "Thêm thất bại"));
		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}
}
