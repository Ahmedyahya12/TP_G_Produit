<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Saisie Produit</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@include file="header.jsp" %>

<div class="container mt-4">
    <!-- Titre avec background -->
    <h4 class="text-center p-2 bg-primary text-white rounded">Saisie d'un Produit</h4>

    <!-- Formulaire de saisie -->
    <form action="SaveProduit.php" method="post" class="mt-3">
        <div class="mb-3">
            <label for="nom" class="form-label">Designation:</label>
            <input type="text" class="form-control" id="nom" name="designation" value="${produit.designation}" required>
        </div>

        <div class="mb-3">
            <label for="prix" class="form-label">Prix :</label>
            <input type="number" class="form-control" id="prix" name="prix" value=${produit.prix} step="0.01" required>
        </div>

        <div class="mb-3">
            <label for="quantite" class="form-label">Quantité :</label>
            <input type="number" class="form-control" id="quantite" name="quantite" value=${produit.quantite} required>
        </div>
      
        

        <button type="submit" class="btn btn-success">Ajouter Produit</button>
    </form>
</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
