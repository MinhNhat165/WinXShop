package winx.controller;

import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import winx.entity.CTDG;
import winx.entity.SanPham;

@Transactional
@Controller
@RequestMapping("product-detail")
public class PageProductDetailController extends CommonMethod {

	@RequestMapping(value = "/{maSP}.htm", method = RequestMethod.GET)
	public String productDetail(HttpSession ss, ModelMap model, @PathVariable("maSP") String maSP) {
		String maKH = (String) ss.getAttribute("maKH");
		if (maKH != null) {
			model.addAttribute("user", getCustomer(maKH));
		}
		model.addAttribute("SP", getProduct(maSP));
		model.addAttribute("productList", getRandomProduct(4));

		return "user/product-detail";
	}

	@RequestMapping(value = "review/{maSP}.htm", method = RequestMethod.POST)
	public String reviewProduct(HttpServletRequest request, ModelMap model, @RequestParam("score") int score,
			@RequestParam("content") String content, @PathVariable("maSP") String maSP) {
		HttpSession ss = request.getSession();
		String maKH = (String) ss.getAttribute("maKH");

		CTDG dg = new CTDG(getProduct(maSP), getCustomer(maKH), score, content, new Date());

		Session session = factory.openSession();

		Transaction t = session.beginTransaction();
		try {
			session.save(dg);
			t.commit();

		} catch (Exception e) {
			// TODO: handle exception
		} finally {

			session.close();
		}

		String referer = request.getHeader("Referer");
		return "redirect:" + referer;
	}
}
