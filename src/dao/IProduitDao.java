package dao;

import java.util.List;

import metier.entities.Produit;

public interface IProduitDao {
  public Produit save(Produit p);
  public List<Produit> produitsParMc(String mc);
  public Produit getProduit(Long id);
  
  public Produit ubdate(Produit p);
  
  public void deleteProduit(Long id);
  
  
}
