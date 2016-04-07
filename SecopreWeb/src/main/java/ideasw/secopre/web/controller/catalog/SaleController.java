package ideasw.secopre.web.controller.catalog;


import java.util.List;
import java.util.HashMap;

import ideasw.secopre.model.catalog.Person;
import ideasw.secopre.model.catalog.Product;
import ideasw.secopre.model.catalog.Sale;
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
public class SaleController extends AuthController {

	@Autowired
	private AccessService accessService;

	@Autowired
	private SecopreCache secopreCahe; 
		
	@RequestMapping(value = "cat/sale/list", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String getSaleList(ModelMap model, RedirectAttributes attributes) {
		
        List<Product> producto = baseService.findAll(Product.class);
		
		//Lista de Productos 
				HashMap<Long, String> productMap = new HashMap<Long, String>();
				for (Product pr : producto) {
					productMap.put(pr.getId(),pr.getDescription() );
				}
				model.addAttribute("productList", productMap);
				
		List<Person> personas = baseService.findAll(Person.class);
		
		//Lista de Personas
				HashMap<Long, String> personMap = new HashMap<Long, String>();
				
				
				
				for (Person p : personas) {
					if (p.getPersonCode().equals("CLIENTE"))
					{
					personMap.put(p.getId(),p.getName().concat(" ").concat(p.getSecondName().concat(" ").concat(p.getFatherLastName().concat(" ").concat(p.getMotherLastName()))) );
					}
				}
				model.addAttribute("personList", personMap);
		
		
		Sale s = new Sale();
		model.addAttribute("saleList", baseService.findAll(Sale.class));
		model.addAttribute("sale", s);
		
		return SecopreConstans.MV_CAT_SALE;
	}
	
	@RequestMapping(value = "cat/sale/add", method = RequestMethod.POST)
	public String add(@ModelAttribute("sales") Sale sales, ModelMap model) {
		try {
			
			
//			if(sale.getId() == null)
//			{
//				sale.setActive(Boolean.TRUE);
//			}
//			else
//			{
//				Sale saleEdit = baseService.findById(Sale.class , sale.getId());	
//			   
//				sale = saleEdit;
//			}
			
			baseService.save(sales);
		} catch (Exception e) {
			e.getStackTrace();
			e.printStackTrace();
			model.addAttribute(
					"errors",
					initErrors("Ocurrio un error al insertar la venta:"
							+ e.getMessage()));
		}
		return SecopreConstans.MV_CAT_SALE_LIST;
	}
	
	@RequestMapping(value = "cat/sale/edit", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String edit( ModelMap model, RedirectAttributes attributes, @RequestParam("id") Long id ) {
		Sale sale = baseService.findById(Sale.class , id);
		model.addAttribute("sale", sale);
		
		model.addAttribute("saleList", baseService.findAll(Sale.class));
		
		
		
List<Product> producto = baseService.findAll(Product.class);
		
		//Lista de Productos 
				HashMap<Long, String> productMap = new HashMap<Long, String>();
				for (Product pr : producto) {
					productMap.put(pr.getId(),pr.getDescription() );
				}
				model.addAttribute("productList", productMap);
				
		List<Person> personas = baseService.findAll(Person.class);
		
		//Lista de Personas
				HashMap<Long, String> personMap = new HashMap<Long, String>();
				for (Person p : personas) {
					if (p.getPersonCode().equals("CLIENTE"))
					{
					personMap.put(p.getId(),p.getName().concat(" ").concat(p.getSecondName().concat(" ").concat(p.getFatherLastName().concat(" ").concat(p.getMotherLastName()))) );
				}
			}
				model.addAttribute("personList", personMap);
	
		
		return SecopreConstans.MV_CAT_SALE_ADD;
	}
	
	@RequestMapping(value = "cat/sale/delete", method = RequestMethod.POST)
	public String delete(ModelMap model,  @RequestParam("id") Long id ) {
		try {
			Sale sale = baseService.findById(Sale.class , id);
			if (sale!=null){
				baseService.remove(sale);
			}
		} catch (Exception e) {
			model.addAttribute(
					"errors",
					initErrors("Ocurrio un error al eliminar la Venta:"
							+ e.getMessage()));
		}
		return SecopreConstans.MV_CAT_SALE;
    }
	
		
}
