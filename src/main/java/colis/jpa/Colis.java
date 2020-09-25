package colis.jpa;
import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Representation d'un colis.
 *
 */
@Entity
public class Colis implements Serializable {
    /**
     * Identifiant du colis (unique).
     *
     */
    @Id @GeneratedValue
    private long id;

    /**
     * Poids du colis.
     */
    private float poids;
    /**
     * Valeur du colis
     */
    private float valeur;
    /**
     * Origine du colis
     */
    private String origine;

    private String destination;
    /**
     * Date a laquelle la mesure a ete faite.
     */
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateColis;


    /**
     * Constructeur sans parametre obligatoire.
     */
    public Colis() {
    }

    /**
     * Contructeur permetant de creer une nouvelle mesure.
     *
     * @param poids piece ou a ete faite la mesure
     * @param valeur valeur d'un colis
     * @param origine origine du colis
     */
    public Colis(float poids, float valeur,String origine,String destination) {
        this.poids = poids;
        this.valeur = valeur;
        this.origine = origine;
        this.destination = destination;
        this.dateColis =new Date();
    }

    public long getId() {
        return id;
    }

    public float getPoids() {
        return poids;
    }

    public void setPoids(float poids) {
        this.poids = poids;
    }

    public float getValeur() {
        return valeur;
    }

    public void setValeur(float valeur) {
        this.valeur = valeur;
    }

    public String getOrigine() {
        return origine;
    }

    public void setOrigine(String origine) {
        this.origine = origine;
    }
    public Date getDateColis() {
        return dateColis;
    }
    public void setDateColis(Date dateMesure) {
        this.dateColis = dateMesure;
    }
    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }
}
