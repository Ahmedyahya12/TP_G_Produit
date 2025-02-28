package dao;

import java.util.List;

import metier.entities.Produit;

public class TestDao {

	public static void main(String[] args) {
		
		 ProduitDaoImpl dao= new ProduitDaoImpl();
		 
		 Produit p1=dao.save(new Produit("HP PC1 567",789,45));
		
		 Produit p2=dao.save(new Produit("DELL PC2 567",989,45));
	
		 
		 Produit p3=dao.save(new Produit("LENEVO PC3 567",7189,45));
		 
		System.out.println(p1.toString() + "\n" + p2.toString() +"\n" + p3.toString());
		
		System.out.print("<------------------>");
		
		List<Produit> prods=dao.produitsParMc("%H%");
		
		for(Produit p:prods) {
			 System.out.println(p.toString());
		}
		
		
	}

}
