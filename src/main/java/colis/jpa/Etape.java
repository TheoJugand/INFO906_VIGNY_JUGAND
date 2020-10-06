package colis.jpa;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
public class Etape implements Serializable  {

    private double latitude;
    private double longitude;
    private String emplacement;
    private String etat;
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateEtape;
    @Id @GeneratedValue
    private long id;

    @ManyToOne @JoinColumn(nullable=false)
    private Colis colis;

    public Etape(){}

    public Etape(double latitude, double longitude, String emplacement, String etat, Date dateEtape, Colis colis) {
        this.latitude = latitude;
        this.longitude = longitude;
        this.emplacement = emplacement;
        this.etat = etat;
        this.dateEtape = dateEtape;
        this.colis = colis;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {this.latitude = latitude;}

    public double getLongitude() { return longitude; }

    public void setLongitude(double longitude) { this.longitude = longitude; }

    public String getEmplacement() { return emplacement; }

    public void setEmplacement(String emplacement) { this.emplacement = emplacement; }

    public String getEtat() { return etat; }

    public void setEtat(String etat) { this.etat = etat; }

    public Date getDateColis() { return dateEtape; }

    public void setDateColis(Date dateColis) { this.dateEtape = dateColis; }

    public long getId() { return id; }
}
