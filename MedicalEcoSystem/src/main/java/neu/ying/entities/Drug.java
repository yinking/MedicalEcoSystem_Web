package neu.ying.entities;
// Generated Apr 7, 2017 12:12:31 PM by Hibernate Tools 5.0.4.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * Drug generated by hbm2java
 */
@Entity
@Table(name = "Drug", catalog = "MedicalEcoSystem", uniqueConstraints = @UniqueConstraint(columnNames = "drugNumber"))
public class Drug implements java.io.Serializable {

	private Integer idDrug;
	private String drugNumber;
	private String formula;
	private String uses;
	private String manufature;
	private String route;
	private String indication;
	private Integer idUser;
	private int idDrugCatalog;
	private String name;

	public Drug() {
	}

	public Drug(int idDrugCatalog) {
		this.idDrugCatalog = idDrugCatalog;
	}

	public Drug(String drugNumber, String formula, String uses, String manufature, String route, String indication,
			Integer idUser, int idDrugCatalog, String name) {
		this.drugNumber = drugNumber;
		this.formula = formula;
		this.uses = uses;
		this.manufature = manufature;
		this.route = route;
		this.indication = indication;
		this.idUser = idUser;
		this.idDrugCatalog = idDrugCatalog;
		this.name = name;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idDrug", unique = true, nullable = false)
	public Integer getIdDrug() {
		return this.idDrug;
	}

	public void setIdDrug(Integer idDrug) {
		this.idDrug = idDrug;
	}

	@Column(name = "drugNumber", unique = true, length = 45)
	public String getDrugNumber() {
		return this.drugNumber;
	}

	public void setDrugNumber(String drugNumber) {
		this.drugNumber = drugNumber;
	}

	@Column(name = "formula", length = 45)
	public String getFormula() {
		return this.formula;
	}

	public void setFormula(String formula) {
		this.formula = formula;
	}

	@Column(name = "uses", length = 100)
	public String getUses() {
		return this.uses;
	}

	public void setUses(String uses) {
		this.uses = uses;
	}

	@Column(name = "manufature", length = 45)
	public String getManufature() {
		return this.manufature;
	}

	public void setManufature(String manufature) {
		this.manufature = manufature;
	}

	@Column(name = "route", length = 45)
	public String getRoute() {
		return this.route;
	}

	public void setRoute(String route) {
		this.route = route;
	}

	@Column(name = "indication", length = 45)
	public String getIndication() {
		return this.indication;
	}

	public void setIndication(String indication) {
		this.indication = indication;
	}

	@Column(name = "idUser")
	public Integer getIdUser() {
		return this.idUser;
	}

	public void setIdUser(Integer idUser) {
		this.idUser = idUser;
	}

	@Column(name = "idDrugCatalog", nullable = false)
	public int getIdDrugCatalog() {
		return this.idDrugCatalog;
	}

	public void setIdDrugCatalog(int idDrugCatalog) {
		this.idDrugCatalog = idDrugCatalog;
	}

	@Column(name = "name", length = 45)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
