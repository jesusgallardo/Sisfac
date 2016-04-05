package ideasw.secopre.model.catalog;

import ideasw.secopre.model.base.Persistible;
import java.math.BigDecimal;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Size;

/**
 * @author jorge.cano
 *
 */
@Entity
@Table(name = "SALE", indexes = {
		@Index(unique = true, name = "sale_ix", columnList = "id")})
public class Sale implements Persistible {
	


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@ManyToOne
	@JoinColumn(name = "PERSON_ID") 
	@Size(max = 100)
	private Person person;
	
	@ManyToOne
	@JoinColumn(name = "ADDRESS_ID")
	@Size(max = 100)
	private Address address;
    
	@ManyToOne
	@JoinColumn(name = "PRODUCT_ID")
	@Size(max = 100)
	private Product product;
	
	@Column(name = "DATE")
	@Size(max = 100)
	private Date date;
	
	@Column(name = "COMMISSION")
	@Size(max = 100)
	private BigDecimal commission;

	@Column(name = "TOTAL")
	@Size(max = 100)
	private BigDecimal total;
	
	@Column(name = "SUBTOTAL")
	@Size(max = 100)
	private BigDecimal subTotal;
	
	@Column(name = "ACTIVE")
	private boolean active;
	
	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public BigDecimal getCommission() {
		return commission;
	}

	public void setCommission(BigDecimal commission) {
		this.commission = commission;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

	public BigDecimal getSubTotal() {
		return subTotal;
	}

	public void setSubTotal(BigDecimal subTotal) {
		this.subTotal = subTotal;
	}
	
		
}
