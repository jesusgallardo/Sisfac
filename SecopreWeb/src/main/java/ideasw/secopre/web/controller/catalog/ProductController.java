package ideasw.secopre.web.controller.catalog;



import java.util.List;
import java.util.HashMap;

import ideasw.secopre.model.catalog.Person;
import ideasw.secopre.model.catalog.Product;
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
 * Controller principal encargada de administrar el catalogo de Productos,
 * 
 * El {@link RequestMapping} se compone de 3 paths principales que son
 * <ul>
 * <li>cat: Indica que esta en el modulo de catalogos</li>
 * <li>product: Indica que la configuracion pertenece a Usuarios</li>
 * <li>auth: Indica que el modulo esta protegido por autorizacion</li>
 * </ul>
 * 
 * @author jesus.gallardos@gmail.com
 *
 */
@Controller
public class ProductController extends AuthController {

	@Autowired
	private AccessService accessService;

	@Autowired
	private SecopreCache secopreCache; 
	
	@RequestMapping(value = "cat/product/list", method = { RequestMethod.GET, 
			RequestMethod.POST })
	public String getProductList(ModelMap model, RedirectAttributes attributes) {
		
    List<Person> personas = baseService.findAll(Person.class);
		
		//Lista de Personas
				HashMap<Long, String> personMap = new HashMap<Long, String>();
				
				
				
				for (Person p : personas) {
//					if (p.getPersonCode().equals("CLIENTE"))
					{
					personMap.put(p.getId(),p.getName().concat(" ").concat(p.getSecondName().concat(" ").concat(p.getFatherLastName().concat(" ").concat(p.getMotherLastName()))) );
					}
				}
				model.addAttribute("personList", personMap);
		
		Product p = new Product();
		model.addAttribute("productList", baseService.findAll(Product.class));
		model.addAttribute("product", p);
	
		return SecopreConstans.MV_CAT_PRODUCT; 
	}
	
	@RequestMapping(value = "cat/product/add", method = RequestMethod.POST)
	public String add(@ModelAttribute("product") Product product, ModelMap model) {
		try {
			
			
			if(product.getId() == null)
			{
				product.setActive(Boolean.TRUE);
			}
			else
			{
			   Product productEdit = baseService.findById(Product.class , product.getId());	
			   //productEdit.setActive(active);
			   productEdit.setCode(product.getCode());
			   productEdit.setDescription(product.getDescription());
			   productEdit.setPerson(product.getPerson());
			   productEdit.setPrice(product.getPrice());
			   
			   
			   product = productEdit;
			}
			
			baseService.save(product);
		} catch (Exception e) {
			e.getStackTrace();
			e.printStackTrace();
			model.addAttribute(
					"errors",
					initErrors("Ocurrio un error al insertar el producto:"
							+ e.getMessage()));
		}
		return SecopreConstans.MV_CAT_PRODUCT_LIST;
	}
	
	@RequestMapping(value = "cat/product/edit", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String edit( ModelMap model, RedirectAttributes attributes, @RequestParam("id") Long id ) {
		Product product = baseService.findById(Product.class , id);
		model.addAttribute("product", product);
		
		model.addAttribute("productList", baseService.findAll(Product.class));
	
		 List<Person> personas = baseService.findAll(Person.class);
			
			//Lista de Personas
					HashMap<Long, String> personMap = new HashMap<Long, String>();
					for (Person p : personas) {
//						if (p.getPersonCode().equals("CLIENTE"))
						{
						personMap.put(p.getId(),p.getName().concat(" ").concat(p.getSecondName().concat(" ").concat(p.getFatherLastName().concat(" ").concat(p.getMotherLastName()))) );
						}
					}
					model.addAttribute("personList", personMap);
		
		return SecopreConstans.MV_CAT_PRODUCT_ADD;
	}
	
	@RequestMapping(value = "cat/product/delete", method = RequestMethod.POST)
	public String delete(ModelMap model,  @RequestParam("id") Long id ) {
		try {
			Product product = baseService.findById(Product.class , id);
			if (product!=null){
				baseService.remove(product);
			}
		} catch (Exception e) {
			model.addAttribute(
					"errors",
					initErrors("Ocurrio un error al eliminar el Producto:"
							+ e.getMessage()));
		}
		return SecopreConstans.MV_CAT_PRODUCT;
    }
	
	@RequestMapping(value = "cat/product/changeStatus", method = { RequestMethod.GET,
			RequestMethod.POST })
	public String changeStatus( ModelMap model, RedirectAttributes attributes, @RequestParam("id") Long id,@RequestParam("activo") Boolean activo  ) {
		Product productEdit = baseService.findById(Product.class , id);
		productEdit.setActive(activo);
		baseService.save(productEdit);
		Product product = new Product();
		model.addAttribute("productList", baseService.findAll(Product.class));
		model.addAttribute("product", product);
		
		return SecopreConstans.MV_CAT_PRODUCT_LIST;
	}
}

