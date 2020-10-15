package colis.ejb;

import colis.jpa.Colis;
import colis.jpa.Etape;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.lang.reflect.Type;
import java.util.Date;
import java.util.List;

@Stateless
@LocalBean
public class ColisEJB {
    @PersistenceContext
    private EntityManager entityManager;

    public ColisEJB(){

    }

    public Colis addColis(float poids,float valeur,String origine,String destination){
        Colis colis = new Colis(poids,valeur,origine,destination);
        entityManager.persist(colis);
        return colis;
    }
    public Colis findColis(long id){
        return entityManager.find(Colis.class,id);
    }
    public Etape findEtape(long id){
        return entityManager.find(Etape.class,id);
    }

    public Etape addEtape(long idColis,double latitude, double longitude, String emplacement, String etat){
        Colis colis = this.findColis(idColis);
        if(colis != null) {
            Etape etape = new Etape(latitude, longitude, emplacement, etat, new Date(), colis);
            colis.addEtape(etape);
            entityManager.persist(etape);
            return etape;
        }else{
            return null;
        }
    }

    public Etape updateEtape(long idEtape,double latitude, double longitude, String emplacement, String etat){
        Etape etape = this.findEtape(idEtape);
        etape.setLatitude(latitude);
        etape.setLongitude(longitude);
        etape.setEmplacement(emplacement);
        etape.setEtat(etat);

        entityManager.merge(etape);
        return etape;
    }

    public List<Colis> findAllColis(){
        TypedQuery<Colis> rq = entityManager.createQuery("select c from Colis c",Colis.class);
        return rq.getResultList();
    }


}
