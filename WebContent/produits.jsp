<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Liste des Produits</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@include file="header.jsp" %>

<div class="container mt-4">
    <!-- Titre avec background -->
    <h4 class="text-center p-1 bg-primary text-white rounded">Liste des Produits</h2>

    <!-- Formulaire de recherche -->
    <form method="get" action="chercher.php" class="mb-3">
        <div class="row">
            <div class="col-md-8">
                <input value="${model.motCle}" type="text"   name="motCle" class="form-control" placeholder="Rechercher un produit...">
            </div>
            <div class="col-md-4">
                <button type="submit" class="btn btn-success w-100">Chercher</button>
            </div>
        </div>
    </form>
    

    <!-- Tableau des produits -->
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Nom du Produit</th>
                <th>Prix</th>
                <th>Catégorie</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
           
           <c:forEach items="${model.produits}" var="p">
             
              <tr>
                <td>${p.id}</td>
                <td>${p.designation}</td>
                <td>${p.prix}</td>
                <td>${p.quantite}</td>
                <td> 
                  <a onclick="return confirm('Etes vous sure de suprime ?')" href="Suprimer.php?id=${p.id}">Suprime</a>
                  
                   <a href="Edit.php?id=${p.id}">Edit</a>
                </td>
                 
              </tr>
              
           
           </c:forEach>
           
        </tbody>
    </table>
</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
