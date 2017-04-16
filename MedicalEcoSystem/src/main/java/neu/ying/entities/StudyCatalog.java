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
 * StudyCatalog generated by hbm2java
 */
@Entity
@Table(name = "StudyCatalog", catalog = "MedicalEcoSystem", uniqueConstraints = @UniqueConstraint(columnNames = "name"))
public class StudyCatalog implements java.io.Serializable {

	private Integer idCatalog;
	private String name;

	public StudyCatalog() {
	}

	public StudyCatalog(String name) {
		this.name = name;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idCatalog", unique = true, nullable = false)
	public Integer getIdCatalog() {
		return this.idCatalog;
	}

	public void setIdCatalog(Integer idCatalog) {
		this.idCatalog = idCatalog;
	}

	@Column(name = "name", unique = true, length = 45)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
