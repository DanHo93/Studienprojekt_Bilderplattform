import java.io.Serializable;


public class RegistrationBean implements Serializable {
	
	private String name;
	private String vorname;
	private String passwort;
	private String email;
	private String benutzer;
	
	public void setBenutzer(String benutzer){
		this.benutzer = benutzer;
	}
	
}
