package colis.ejb;

import colis.jpa.Colis;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import java.lang.reflect.Type;
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

    public List<Colis> findAllColis(){
        TypedQuery<Colis> rq = entityManager.createQuery("select c from Colis c",Colis.class);
        return rq.getResultList();
    }


}
