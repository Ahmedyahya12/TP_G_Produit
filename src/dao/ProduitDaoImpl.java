package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import metier.entities.Produit;

public class ProduitDaoImpl implements IProduitDao{

	
	@Override
	public Produit save(Produit p) {
		
		Connection connection=SingletonConnection.getConnection();
		
		try {
			  PreparedStatement ps = connection.prepareStatement(
				    "INSERT INTO `produits` (`designation`, `prix`, `quantite`) VALUES (?, ?, ?);"
				);
				ps.setString(1, p.getDesignation());
				ps.setDouble(2, p.getPrix());
				ps.setInt(3, p.getQuantite());
				
				ps.executeUpdate();
			
			
				PreparedStatement ps2=connection.prepareStatement
					("select MAX(ID) as MAXID from produits");
			
			   ResultSet rs=ps2.executeQuery();
			
			if(rs.next()) {
				p.setId(rs.getLong("MAXID"));
			}
			
			
			ps.close();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return p;
	}

	@Override
	public List<Produit> produitsParMc(String mc) {
		List<Produit> produits=new ArrayList<Produit>();
		
		Connection connection=SingletonConnection.getConnection();
		
		try {
			PreparedStatement ps= connection.prepareStatement
			("select * from produits where designation like ?");
			ps.setString(1, mc);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Produit p=new Produit();
				p.setId(rs.getLong("id"));
				p.setDesignation(rs.getString("designation"));
				p.setPrix(rs.getDouble("prix"));
				p.setQuantite(rs.getInt("quantite"));
				
				produits.add(p);
				
				
				
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return produits;
	}

	@Override
	public Produit getProduit(Long id) {
		Produit p=null;
        
		Connection connection=SingletonConnection.getConnection();
		
		try {
			PreparedStatement ps= connection.prepareStatement
			("select * from produits where id=?");
			ps.setLong(1, id);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				p=new Produit();
				p.setId(rs.getLong("id"));
				p.setDesignation(rs.getString("designation"));
				p.setPrix(rs.getDouble("prix"));
				p.setQuantite(rs.getInt("quantite"));
				
			
				
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return p;
				
		
	}

	@Override
	public Produit ubdate(Produit p) {
		Connection connection=SingletonConnection.getConnection();
		try {
			  PreparedStatement ps = connection.prepareStatement(
				    "UPDATE  PRODUITS SET DESIGNATION=?,PRIX=?,QUANTITE=? WHERE ID=?;"
				);
				ps.setString(1, p.getDesignation());
				ps.setDouble(2, p.getPrix());
				ps.setInt(3, p.getQuantite());
				ps.setLong(4, p.getId());
				
				ps.executeUpdate();
			
			
			
			ps.close();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return p;
	}

	@Override
	public void deleteProduit(Long id) {
		 
		Connection connection=SingletonConnection.getConnection();
		try {
			  PreparedStatement ps = connection.prepareStatement(
				    "DELETE FROM PRODUITS WHERE ID=?;"
				);
			  
				ps.setLong(1, id);
				
				
				ps.executeUpdate();
			
			
			
			  
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	

}


