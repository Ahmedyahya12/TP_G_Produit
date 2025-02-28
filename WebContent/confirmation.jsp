<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Confirmation</title>
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .custom-container {
            width: 60%;
            margin: auto; /* Centre le container */
        }
    </style>
</head>
<body>
<%@include file="header.jsp" %>

<div class="custom-container mt-4">
    <div class="alert alert-success text-center">
        <h4>Opération réalisée avec succès ! 🎉</h4>
    </div>

    <div class="card">
        <div class="card-header bg-primary text-white">
            <h5>Détails du produit</h5>
        </div>
        <div class="card-body">
            <p><strong>ID :</strong> ${produit.id}</p>     
            <p><strong>Nom :</strong> ${produit.designation}</p>
            <p><strong>Prix :</strong> ${produit.prix}€</p>
            <p><strong>Quantité :</strong> ${produit.prix}</p>
            
        </div>
    </div>

    <div class="mt-3 text-center">
        <a href="index.php" class="btn btn-primary">Retour à l'accueil</a>
        <a href="SaisieProduit.jsp" class="btn btn-success">Ajouter un autre produit</a>
    </div>
</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
