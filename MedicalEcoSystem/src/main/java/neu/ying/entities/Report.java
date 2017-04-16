package neu.ying.entities;
// Generated Apr 7, 2017 12:12:31 PM by Hibernate Tools 5.0.4.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Report generated by hbm2java
 */
@Entity
@Table(name = "Report", catalog = "MedicalEcoSystem")
public class Report implements java.io.Serializable {

	private int idReport;
	private String study;
	private String title;
	private String content;
	private int idUser;

	public Report() {
	}

	public Report(int idReport, int idUser) {
		this.idReport = idReport;
		this.idUser = idUser;
	}

	public Report(int idReport, String study, String title, String content, int idUser) {
		this.idReport = idReport;
		this.study = study;
		this.title = title;
		this.content = content;
		this.idUser = idUser;
	}

	@Id

	@Column(name = "idReport", unique = true, nullable = false)
	public int getIdReport() {
		return this.idReport;
	}

	public void setIdReport(int idReport) {
		this.idReport = idReport;
	}

	@Column(name = "study", length = 45)
	public String getStudy() {
		return this.study;
	}

	public void setStudy(String study) {
		this.study = study;
	}

	@Column(name = "title", length = 45)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "content", length = 45)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "idUser", nullable = false)
	public int getIdUser() {
		return this.idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

}