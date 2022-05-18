package winx.controller;

import java.util.List;


import javax.mail.internet.MimeMessage;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import winx.entity.DonDat;
import winx.entity.KhachHang;
import winx.entity.TaiKhoan;

@Transactional
@Controller
@RequestMapping("/admin/")
public class OrderController {
	@Autowired
	public JavaMailSender mailer;
	@Autowired
	SessionFactory fa;

	public List<DonDat> getOrders() {
		Session session = fa.getCurrentSession();
		String hql = "FROM DonDat";
		Query query = session.createQuery(hql);
		List<DonDat> list = query.list();

		return list;
	}

	public DonDat getOrder(String MaDD) {
		Session session = fa.getCurrentSession();
		String hql = "FROM DonDat where MaDD=:MaDD";
		Query query = session.createQuery(hql);
		query.setParameter("MaDD", MaDD);
		DonDat o = (DonDat) query.list().get(0);
		return o;
	}

	// get list order
	@RequestMapping(value = "order", method = RequestMethod.GET)
	public String getOrders(ModelMap model) {
		List<DonDat> list = getOrders();
		model.addAttribute("orders", list);

		return "admin/order";
	}

	@RequestMapping(value = "order/change-status/{id}.htm", params = "linkEdit")

	public String updateStatus(ModelMap model, @PathVariable("id") String id) {
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("order", this.getOrder(id));
		DonDat t = this.getOrder(id);
		System.out.println(t);

		model.addAttribute("btnStatus", "btnEdit");

		List<DonDat> list = getOrders();
		model.addAttribute("orders", list);

		return "admin/order";
	}

	@RequestMapping(value = "order/change-status/{id}.htm", params = "btnEdit", method = RequestMethod.POST)
	public String updateStatus(ModelMap model, @ModelAttribute("order") DonDat order, @PathVariable("id") String id) {
		DonDat orderOld = getOrder(id);
		orderOld.setTrangThai(order.getTrangThai());
		Session session = fa.openSession();
		Transaction t = session.beginTransaction();

		try {
			session.merge(orderOld);

			String mailMessage = "";
			if (order.getTrangThai() != 0) {
				if (orderOld.getTrangThai() == 1)
					mailMessage = "Đơn hàng" + orderOld.getMaDD()
							+ " của bạn đã được xác nhận và đang trong quá trình vận chuyển";
				else if (orderOld.getTrangThai() == 2)
					mailMessage = "Đơn hàng " + orderOld.getMaDD() + " của bạn đã được giao và hoàn tất thành toán";
				else if (orderOld.getTrangThai() == 3)
					mailMessage = "Đơn hàng " + orderOld.getMaDD() + " của bạn đã bị huỷ";
				MimeMessage mail = mailer.createMimeMessage();
				MimeMessageHelper helper = new MimeMessageHelper(mail, true);
				helper.setFrom("nguyenminhnhat301101@gmail.com", "WinxShop");
				helper.setTo(orderOld.getKhachHang().getTaiKhoan().getEmail());
				helper.setReplyTo("nguyenminhnhat301101@gmail.com");
				helper.setSubject("Thông báo về tình trạng đơn hàng của bạn");
				helper.setText(mailMessage);
				mailer.send(mail);
			}

			return "redirect:/admin/order.htm";
		} catch (Exception e) {
			System.out.println(e);
			t.rollback();
		} finally {
			session.close();
		}

		List<DonDat> list = getOrders();
		model.addAttribute("orders", list);

		return "admin/order";
	}
}
