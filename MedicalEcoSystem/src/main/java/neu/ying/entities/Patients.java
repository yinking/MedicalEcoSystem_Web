package neu.ying.entities;
// Generated Apr 7, 2017 12:12:31 PM by Hibernate Tools 5.0.4.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

/**
 * Patients generated by hbm2java
 */
@Entity
@Table(name = "patients", catalog = "MedicalEcoSystem", uniqueConstraints = @UniqueConstraint(columnNames = "national_id"))
public class Patients implements java.io.Serializable {

	private String patientsId;
	private String patientsFirstName;
	private String patientsLastName;
	private String gender;
	private int nationalId;
	private String maritalStatus;
	private String phone;
	private String email;
	private Date dateOfBirth;
	private Date registrationDate;
	private String city;
	private String state;
	private String nationality;
	private boolean assigned;

	public Patients() {
	}

	public Patients(String patientsId, String patientsFirstName, String patientsLastName, String gender, int nationalId,
			String maritalStatus, String phone, String email, Date dateOfBirth, Date registrationDate, String city,
			String state, String nationality, boolean assigned) {
		this.patientsId = patientsId;
		this.patientsFirstName = patientsFirstName;
		this.patientsLastName = patientsLastName;
		this.gender = gender;
		this.nationalId = nationalId;
		this.maritalStatus = maritalStatus;
		this.phone = phone;
		this.email = email;
		this.dateOfBirth = dateOfBirth;
		this.registrationDate = registrationDate;
		this.city = city;
		this.state = state;
		this.nationality = nationality;
		this.assigned = assigned;
	}

	@Id

	@Column(name = "patients_id", unique = true, nullable = false, length = 11)
	public String getPatientsId() {
		return this.patientsId;
	}

	public void setPatientsId(String patientsId) {
		this.patientsId = patientsId;
	}

	@Column(name = "patients_first_name", nullable = false, length = 20)
	public String getPatientsFirstName() {
		return this.patientsFirstName;
	}

	public void setPatientsFirstName(String patientsFirstName) {
		this.patientsFirstName = patientsFirstName;
	}

	@Column(name = "patients_last_name", nullable = false, length = 20)
	public String getPatientsLastName() {
		return this.patientsLastName;
	}

	public void setPatientsLastName(String patientsLastName) {
		this.patientsLastName = patientsLastName;
	}

	@Column(name = "gender", nullable = false, length = 6)
	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Column(name = "national_id", unique = true, nullable = false)
	public int getNationalId() {
		return this.nationalId;
	}

	public void setNationalId(int nationalId) {
		this.nationalId = nationalId;
	}

	@Column(name = "marital_status", nullable = false, length = 8)
	public String getMaritalStatus() {
		return this.maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	@Column(name = "phone", nullable = false, length = 20)
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "email", nullable = false, length = 20)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "date_of_birth", nullable = false, length = 10)
	public Date getDateOfBirth() {
		return this.dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "registration_date", nullable = false, length = 19)
	public Date getRegistrationDate() {
		return this.registrationDate;
	}

	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}

	@Column(name = "city", nullable = false, length = 20)
	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "state", nullable = false, length = 20)
	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "nationality", nullable = false, length = 20)
	public String getNationality() {
		return this.nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	@Column(name = "assigned", nullable = false)
	public boolean isAssigned() {
		return this.assigned;
	}

	public void setAssigned(boolean assigned) {
		this.assigned = assigned;
	}

}