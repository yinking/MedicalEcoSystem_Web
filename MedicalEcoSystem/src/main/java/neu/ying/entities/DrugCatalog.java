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
 * DrugCatalog generated by hbm2java
 */
@Entity
@Table(name = "DrugCatalog", catalog = "MedicalEcoSystem", uniqueConstraints = @UniqueConstraint(columnNames = "name"))
public class DrugCatalog implements java.io.Serializable {

	private Integer idDrugCatalog;
	private String name;

	public DrugCatalog() {
	}

	public DrugCatalog(String name) {
		this.name = name;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idDrugCatalog", unique = true, nullable = false)
	public Integer getIdDrugCatalog() {
		return this.idDrugCatalog;
	}

	public void setIdDrugCatalog(Integer idDrugCatalog) {
		this.idDrugCatalog = idDrugCatalog;
	}

	@Column(name = "name", unique = true, length = 45)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
