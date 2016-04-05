package ideasw.secopre.model.catalog;

import ideasw.secopre.model.base.Persistible;
import ideasw.secopre.model.base.PersonBase;

import java.math.BigDecimal;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.envers.Audited;

/**
 * @author jorge.cano
 *
 */
@Entity
@Audited
@Table(name = "PRODUCT", indexes = {
		@Index(unique = true, name = "producto_ix", columnList = "id")})
public class Product implements Persistible {
	
		
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "DESCRIPTION")
	@Size(max = 100)
	private String description;
	
	@Column(name = "PRICE")
	@Size(max = 100)
	private BigDecimal price;

	@Column(name = "CODE")
	@Size(max = 100)
	private String code;
	
	@Column(name = "PROVIDER")
	@Size(max = 100)
	private String provider;
	
	@Column(name = "ACTIVE")
	private boolean active;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getProvider() {
		return provider;
	}

	public void setProvider(String provider) {
		this.provider = provider;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}
	
}
