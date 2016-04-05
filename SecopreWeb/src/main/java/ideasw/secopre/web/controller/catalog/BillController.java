package ideasw.secopre.web.controller.catalog;



import ideasw.secopre.model.catalog.Bill;
import ideasw.secopre.service.AccessService;
import ideasw.secopre.web.SecopreConstans;
import ideasw.secopre.web.controller.SecopreCache;
import ideasw.secopre.web.controller.base.AuthController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Controller principal encargada de administrar el catalogo de Personas,
 * 
 * El {@link RequestMapping} se compone de 3 paths principales que son
 * <ul>
 * <li>cat: Indica que esta en el modulo de catalogos</li>
 * <li>person: Indica que la configuracion pertenece a Usuarios</li>
 * <li>auth: Indica que el modulo esta protegido por autorizacion</li>
 * </ul>
 * 
 * @author jesus.gallardos@gmail.com
 *
 */
@Controller
public class BillController extends AuthController {

	@Autowired
	private AccessService accessService;

	@Autowired
	private SecopreCache secopreCahe; 
	
	@RequestMapping(value = "cat/bill/list", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String getBillList(ModelMap model, RedirectAttributes attributes) {
		
		Bill b = new Bill();
		model.addAttribute("billList", baseService.findAll(Bill.class));
		model.addAttribute("bill", b);
		
		return SecopreConstans.MV_CAT_BILL;
		
	}
	
	@RequestMapping(value = "cat/bill/add", method = RequestMethod.POST)
	public String add(@ModelAttribute("bill") Bill bill, ModelMap model) {
		try {
			
			
//			if(bill.getId() == null)
//			{
//				bill.setActive(Boolean.TRUE);
//			}
//			else
//			{
//				Bill billEdit = baseService.findById(Bill.class , bill.getId());	
//			   
//				bill = billEdit;
//			}
			
			baseService.save(bill);
		} catch (Exception e) {
			e.getStackTrace();
			e.printStackTrace();
			model.addAttribute(
					"errors",
					initErrors("Ocurrio un error al insertar el factura:"
							+ e.getMessage()));
		}
		return SecopreConstans.MV_CAT_BILL_LIST;
	}
	

	@RequestMapping(value = "cat/bill/edit", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String edit( ModelMap model, RedirectAttributes attributes, @RequestParam("id") Long id ) {
		Bill bill = baseService.findById(Bill.class , id);
		model.addAttribute("bill", bill);
		
		model.addAttribute("billList", baseService.findAll(Bill.class));
	
		
		return SecopreConstans.MV_CAT_BILL_ADD;
	}
	
	@RequestMapping(value = "cat/bill/delete", method = RequestMethod.POST)
	public String delete(ModelMap model,  @RequestParam("id") Long id ) {
		try {
			Bill bill = baseService.findById(Bill.class , id);
			if (bill!=null){
				baseService.remove(bill);
			}
		} catch (Exception e) {
			model.addAttribute(
					"errors",
					initErrors("Ocurrio un error al eliminar el Factura:"
							+ e.getMessage()));
		}
		return SecopreConstans.MV_CAT_BILL;
    }

}
