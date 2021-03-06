package neu.ying.entities;
// Generated Apr 7, 2017 12:12:31 PM by Hibernate Tools 5.0.4.Final

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * OrarId generated by hbm2java
 */
@Embeddable
public class OrarId implements java.io.Serializable {

	private int idActivitate;
	private String grupa;

	public OrarId() {
	}

	public OrarId(int idActivitate, String grupa) {
		this.idActivitate = idActivitate;
		this.grupa = grupa;
	}

	@Column(name = "id_activitate", nullable = false)
	public int getIdActivitate() {
		return this.idActivitate;
	}

	public void setIdActivitate(int idActivitate) {
		this.idActivitate = idActivitate;
	}

	@Column(name = "grupa", nullable = false, length = 6)
	public String getGrupa() {
		return this.grupa;
	}

	public void setGrupa(String grupa) {
		this.grupa = grupa;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof OrarId))
			return false;
		OrarId castOther = (OrarId) other;

		return (this.getIdActivitate() == castOther.getIdActivitate())
				&& ((this.getGrupa() == castOther.getGrupa()) || (this.getGrupa() != null
						&& castOther.getGrupa() != null && this.getGrupa().equals(castOther.getGrupa())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getIdActivitate();
		result = 37 * result + (getGrupa() == null ? 0 : this.getGrupa().hashCode());
		return result;
	}

}
