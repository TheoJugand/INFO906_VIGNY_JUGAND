package colis.ejb;

import colis.jpa.Colis;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
@LocalBean
public class ColisEJB {
    @PersistenceContext
    private EntityManager entityManager;

    public ColisEJB(){

    }

    public Colis addColis(float poids,float valeur,String origine){
        Colis colis = new Colis(poids,valeur,origine);
        entityManager.persist(colis);
        return colis;
    }

    public Colis findColis(long id){
        return entityManager.find(Colis.class,id);
    }


}
