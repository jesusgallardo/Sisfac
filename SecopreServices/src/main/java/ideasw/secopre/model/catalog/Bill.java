package ideasw.secopre.model.catalog;


import ideasw.secopre.model.base.Persistible;


import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Index;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.envers.Audited;
import org.hibernate.envers.NotAudited;
import org.hibernate.envers.RelationTargetAuditMode;

/**
 * @author jorge.cano
 *
 */
@Entity
@Audited
@Table(name = "BILL", indexes = {
		@Index(unique = true, name = "bill_ix", columnList = "id")})
public class Bill implements Persistible {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "Date")
	@Size(max = 100)
	private Date date;
	

	@NotAudited
	@Audited(targetAuditMode = RelationTargetAuditMode.NOT_AUDITED)
	@ManyToMany(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
	@JoinTable(name = "SALE_BILL", joinColumns = { @JoinColumn(name = "SALE_ID") }, inverseJoinColumns = { @JoinColumn(name = "BILL_ID") })
	private List<Sale> sale;
    
	@Column(name = "NUMBILL")
	@Size(max = 100)
	private String numBill;
	
	@Column(name = "FOLIOFISCAL")
	@Size (max = 100)
    private String folioFiscal;
	
	@Column(name = "NUSERIESTRANSMITTER")
	@Size (max = 100)
	private String nuSeriesTransmitter;
	
	@Column(name = "SUBTOTAL")
	@Size (max = 100)
	private BigDecimal subTotal;
	
	@Column (name = "IVA")
	@Size (max = 100)
	private BigDecimal iva;
	
	@Column (name = "TOTAL")
	@Size (max = 100)
	private BigDecimal total;
	
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

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public List<Sale> getSale() {
		return sale;
	}

	public void setSale(List<Sale> sale) {
		this.sale = sale;
	}

	public String getNumBill() {
		return numBill;
	}

	public void setNumBill(String numBill) {
		this.numBill = numBill;
	}

	public String getFolioFiscal() {
		return folioFiscal;
	}

	public void setFolioFiscal(String folioFiscal) {
		this.folioFiscal = folioFiscal;
	}

	public String getNuSeriesTransmitter() {
		return nuSeriesTransmitter;
	}

	public void setNuSeriesTransmitter(String nuSeriesTransmitter) {
		this.nuSeriesTransmitter = nuSeriesTransmitter;
	}

	public BigDecimal getSubTotal() {
		return subTotal;
	}

	public void setSubTotal(BigDecimal subTotal) {
		this.subTotal = subTotal;
	}

	public BigDecimal getIva() {
		return iva;
	}

	public void setIva(BigDecimal iva) {
		this.iva = iva;
	}

	public BigDecimal getTotal() {
		return total;
	}

	public void setTotal(BigDecimal total) {
		this.total = total;
	}

  
}
