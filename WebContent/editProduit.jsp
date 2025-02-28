<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Modifier Produit</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@include file="header.jsp" %>

<div class="container mt-4" style="width: 60%;">
    <!-- Titre -->
    <h4 class="text-center p-2 bg-warning text-dark rounded">Modifier un Produit</h4>

    <!-- Formulaire d'édition -->
    <form action="UpdateProduit.php" method="post" class="mt-3">
        <!-- ID du produit caché -->
        <input type="hidden" name="id" value="${produit.id}">

        <div class="mb-3">
            <label for="nom" class="form-label">Désignation:</label>
            <input type="text" class="form-control" id="nom" name="designation" value="${produit.designation}" required>
        </div>

        <div class="mb-3">
            <label for="prix" class="form-label">Prix :</label>
            <input type="number" class="form-control" id="prix" name="prix" value="${produit.prix}" step="0.01" required>
        </div>

        <div class="mb-3">
            <label for="quantite" class="form-label">Quantité :</label>
            <input type="number" class="form-control" id="quantite" name="quantite" value="${produit.quantite}" required>
        </div>

        <button type="submit" class="btn btn-primary">Mettre à jour</button>
        <a href="index.jsp" class="btn btn-secondary">Annuler</a>
    </form>
</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
