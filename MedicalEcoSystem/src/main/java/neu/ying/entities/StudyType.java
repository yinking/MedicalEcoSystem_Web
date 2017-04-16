package neu.ying.entities;
// Generated Apr 7, 2017 12:12:31 PM by Hibernate Tools 5.0.4.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * StudyType generated by hbm2java
 */
@Entity
@Table(name = "StudyType", catalog = "MedicalEcoSystem")
public class StudyType implements java.io.Serializable {

	private int idStudyType;
	private String name;

	public StudyType() {
	}

	public StudyType(int idStudyType) {
		this.idStudyType = idStudyType;
	}

	public StudyType(int idStudyType, String name) {
		this.idStudyType = idStudyType;
		this.name = name;
	}

	@Id

	@Column(name = "idStudyType", unique = true, nullable = false)
	public int getIdStudyType() {
		return this.idStudyType;
	}

	public void setIdStudyType(int idStudyType) {
		this.idStudyType = idStudyType;
	}

	@Column(name = "name", length = 45)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}