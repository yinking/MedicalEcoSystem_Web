package neu.ying.entities;
// Generated Apr 7, 2017 12:12:31 PM by Hibernate Tools 5.0.4.Final

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * DrugPharmacytransId generated by hbm2java
 */
@Embeddable
public class DrugPharmacytransId implements java.io.Serializable {

	private int drugIdDrug;
	private int pharmacytransIdPharmacytrans;

	public DrugPharmacytransId() {
	}

	public DrugPharmacytransId(int drugIdDrug, int pharmacytransIdPharmacytrans) {
		this.drugIdDrug = drugIdDrug;
		this.pharmacytransIdPharmacytrans = pharmacytransIdPharmacytrans;
	}

	@Column(name = "Drug_idDrug", nullable = false)
	public int getDrugIdDrug() {
		return this.drugIdDrug;
	}

	public void setDrugIdDrug(int drugIdDrug) {
		this.drugIdDrug = drugIdDrug;
	}

	@Column(name = "Pharmacytrans_idPharmacytrans", nullable = false)
	public int getPharmacytransIdPharmacytrans() {
		return this.pharmacytransIdPharmacytrans;
	}

	public void setPharmacytransIdPharmacytrans(int pharmacytransIdPharmacytrans) {
		this.pharmacytransIdPharmacytrans = pharmacytransIdPharmacytrans;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof DrugPharmacytransId))
			return false;
		DrugPharmacytransId castOther = (DrugPharmacytransId) other;

		return (this.getDrugIdDrug() == castOther.getDrugIdDrug())
				&& (this.getPharmacytransIdPharmacytrans() == castOther.getPharmacytransIdPharmacytrans());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getDrugIdDrug();
		result = 37 * result + this.getPharmacytransIdPharmacytrans();
		return result;
	}

}
