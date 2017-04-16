package neu.ying.entities;
// Generated Apr 7, 2017 12:12:31 PM by Hibernate Tools 5.0.4.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 * DrugHasCompound generated by hbm2java
 */
@Entity
@Table(name = "Drug_has_Compound", catalog = "MedicalEcoSystem", uniqueConstraints = @UniqueConstraint(columnNames = {
		"idCompound", "compoundWeight" }))
public class DrugHasCompound implements java.io.Serializable {

	private Integer id;
	private int idCompound;
	private String compoundWeight;
	private String drugNumber;
	private Date assignDate;

	public DrugHasCompound() {
	}

	public DrugHasCompound(int idCompound, String drugNumber) {
		this.idCompound = idCompound;
		this.drugNumber = drugNumber;
	}

	public DrugHasCompound(int idCompound, String compoundWeight, String drugNumber, Date assignDate) {
		this.idCompound = idCompound;
		this.compoundWeight = compoundWeight;
		this.drugNumber = drugNumber;
		this.assignDate = assignDate;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "idCompound", nullable = false)
	public int getIdCompound() {
		return this.idCompound;
	}

	public void setIdCompound(int idCompound) {
		this.idCompound = idCompound;
	}

	@Column(name = "compoundWeight", length = 45)
	public String getCompoundWeight() {
		return this.compoundWeight;
	}

	public void setCompoundWeight(String compoundWeight) {
		this.compoundWeight = compoundWeight;
	}

	@Column(name = "drugNumber", nullable = false, length = 45)
	public String getDrugNumber() {
		return this.drugNumber;
	}

	public void setDrugNumber(String drugNumber) {
		this.drugNumber = drugNumber;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "assignDate", length = 10)
	public Date getAssignDate() {
		return this.assignDate;
	}

	public void setAssignDate(Date assignDate) {
		this.assignDate = assignDate;
	}

}