package winx.controller;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import winx.bean.UploadFile;
import winx.entity.KhachHang;
import winx.entity.SanPham;
import winx.entity.TaiKhoan;
import winx.entity.TinMoi;

@Transactional
@Controller
@RequestMapping("/admin/")
public class NewsController extends CommonMethod {
	@Autowired
	SessionFactory factory;
	@Autowired
	@Qualifier("uploadFile")
	UploadFile basePathUploadFile;

	public List<TinMoi> getNews() {

		Session session = factory.getCurrentSession();
		String hql = "FROM TinMoi";
		Query query = session.createQuery(hql);
		List<TinMoi> list = query.list();
		return list;
	}

	public TinMoi getSingleNews(String MaTin) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TinMoi where MaTin=:MaTin";
		Query query = session.createQuery(hql);
		query.setParameter("MaTin", MaTin);
		TinMoi n = (TinMoi) query.list().get(0);

		return n;
	}

	// get news
	@RequestMapping(value = "news", method = RequestMethod.GET)
	public String getNews(ModelMap model) {
		TinMoi news = new TinMoi();
		model.addAttribute("news", news);
		List<TinMoi> list = getNews();
		model.addAttribute("newsList", list);

		return "admin/news";
	}

	// create news
	@RequestMapping(value = "news/add-news", method = RequestMethod.GET)
	public String add(ModelMap model) {
		TinMoi tin = new TinMoi();
		tin.setMaTin(generatorId("TM", "TinMoi", "maTin"));
		model.addAttribute("idModal", "modalCreate");
		model.addAttribute("news", tin);
		List<TinMoi> list = getNews();
		model.addAttribute("newsList", list);
		

		return "admin/news";
	}
	@RequestMapping(value = "news/add-news.htm", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("news") TinMoi news, BindingResult result,

			@RequestParam("anh") MultipartFile anh, RedirectAttributes redirectAttributes) {

		if (anh.isEmpty()) {
			System.out.println("rong");

		} else {
			try {

				String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-"));
				String tenAnh = date + anh.getOriginalFilename();
				String duongDanAnh = basePathUploadFile.getBasePath() + File.separator + tenAnh;
				System.out.println("anh: "+duongDanAnh);

				Session session = factory.openSession();
				Transaction t = session.beginTransaction();
				try {
					Date dateNow = new Date();
					news.ngayTao = dateNow;
					news.setTrangThai((byte)1);
					news.setAnh(tenAnh);
					session.save(news);
					
					t.commit();
					anh.transferTo(new File(duongDanAnh));
					redirectAttributes.addFlashAttribute("message",
							new Message("success","Thêm mới thành công"));
					return "redirect:/admin/news.htm";
					
				} catch (Exception e) {
					t.rollback();
					System.out.println("error catch " +e.getCause());
				} finally {
					session.close();
				}

			} catch (Exception e) {
				// TODO: handle exception
			}
		}

		List<TinMoi> list = getNews();
		model.addAttribute("newsList", list);
		
		model.addAttribute("message",
				new Message("error","Thêm mới thất bại!"));

		return "admin/news";
	}
	// update news
	@RequestMapping(value="news/update/{id}.htm",params="linkEdit")
		
		public String updateNews(ModelMap model,
				@PathVariable("id") String id) {
			model.addAttribute("idModal", "modalShow");
			model.addAttribute("news",this.getSingleNews(id));
			TinMoi t = this.getSingleNews(id);
			model.addAttribute("btnStatus", "btnEdit");
			
			List<TinMoi> list = getNews();
			model.addAttribute("newsList", list);
			
			return "admin/news";
		}
	@RequestMapping(value = "news/update/{id}.htm",params="btnEdit", method = RequestMethod.POST)
	public String updateNews(@ModelAttribute("news") TinMoi news, ModelMap model, @RequestParam("anh1") MultipartFile anh1, RedirectAttributes redirectAttributes) {
			boolean checkanh = true;
			if (anh1.isEmpty()) {
				checkanh = false;
				System.out.println("RONG");
			}
		
			try {
				String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyMMddHHmmss-"));
				String tenAnh = date + anh1.getOriginalFilename();
				String duongDanAnh = basePathUploadFile.getBasePath() + File.separator + tenAnh;
				System.out.println("anh: "+duongDanAnh);

				Session session = factory.openSession();
				Transaction t = session.beginTransaction();
				try {
					TinMoi temp = getSingleNews(news.getMaTin());
					String oldImg = temp.getAnh();
					System.out.println(oldImg);
					if (checkanh) {
						news.setAnh(tenAnh);
						anh1.transferTo(new File(duongDanAnh));
						
					}else {
						news.setAnh(oldImg);
						anh1.transferTo(new File(duongDanAnh));
					}
					Date dateNow = new Date();
					news.ngayTao = dateNow;
					news.setTrangThai((byte)1);
					
					session.update(news);
					t.commit();
					model.addAttribute("tinmoi", new TinMoi());
					redirectAttributes.addFlashAttribute("message",
							new Message("success","Chỉnh sửa thành công"));
					
					return "redirect:/admin/news.htm";
//					model.addAttribute("message", "Sửa thành công!");
				} catch (Exception e) {
					System.out.println(e);
					t.rollback();
					model.addAttribute("message", "Sửa thất bại!");
				} finally {
					session.close();
				}
				
			}catch(Exception e){
				
			}
		
		
		List<TinMoi> list = getNews();
		model.addAttribute("newsList", list);
		model.addAttribute("message",
				new Message("error","Chỉnh sửa thất bại!"));

		return "admin/news";
	}
	// delete
	@RequestMapping(value="news/delete/{id}.htm",params="linkDelete")
	public String delete_User(@ModelAttribute("user") TinMoi news,
			ModelMap model,
			@PathVariable("id") String id, RedirectAttributes redirectAttributes) {
			try {
				TinMoi t = this.getSingleNews(id);
				System.out.println(t);
				Integer temp =this.deleteNews(this.getSingleNews(id));
				if(temp!=0) {
				model.addAttribute("message","Xóa thành công!");
				redirectAttributes.addFlashAttribute("message",
						new Message("success","Xoá thành công"));
				}
				
				
				else {
					model.addAttribute("message","Xóa thất bại!");
					model.addAttribute("message",
							new Message("error","Xóa thất bại!"));
				}
				
				return "redirect:/admin/news.htm";
			} catch(Exception e){
				System.out.println(e);
				
			}
			
			
			List<TinMoi> list = getNews();
			model.addAttribute("newsList",list);
		  
			return "admin/news";
	}
	public Integer deleteNews(TinMoi news) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			session.delete(news);
			t.commit();
			System.out.println("success");
		}
		catch(Exception e) {
			System.out.println(e);
			t.rollback();
			return 0;
		}
		finally {
			session.close();
		}
		return 1;
	}

}
