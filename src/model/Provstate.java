package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the provstate database table.
 * 
 */
@Entity
@NamedQuery(name="Provstate.findAll", query="SELECT p FROM Provstate p")
public class Provstate implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String code;

	private String countrycode;

	private String name;

	public Provstate() {
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getCountrycode() {
		return this.countrycode;
	}

	public void setCountrycode(String countrycode) {
		this.countrycode = countrycode;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}