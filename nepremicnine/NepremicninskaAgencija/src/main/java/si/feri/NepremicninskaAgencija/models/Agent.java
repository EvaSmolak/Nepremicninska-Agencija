package si.feri.NepremicninskaAgencija.models;
public class Agent{

    int idAgent;
    String ime;
    String priimek;
    String email;
    String geslo;
    String telefonskaSt;

    public Agent(){}

    public Agent(String email, String geslo){
        this.email=email;
        this.geslo=geslo;
    }
    public Agent(String ime, String priimek, String email, String geslo){
        this.ime=ime;
        this.priimek=priimek;
        this.email=email;
        this.geslo=geslo;
    }

    public int getIdAgent() {
        return idAgent;
    }

    public void setIdAgent(int idAgent) {
        this.idAgent = idAgent;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getPriimek() {
        return priimek;
    }

    public void setPriimek(String priimek) {
        this.priimek = priimek;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGeslo() {
        return geslo;
    }

    public void setGeslo(String geslo) {
        this.geslo = geslo;
    }

    public String getTelefonskaSt() {
        return telefonskaSt;
    }

    public void setTelefonskaSt(String telefonskaSt) {
        this.telefonskaSt = telefonskaSt;
    }

}