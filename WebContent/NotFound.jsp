<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Page Non Trouvée</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .error-container {
            text-align: center;
            margin-top: 10%;
        }
        .error-code {
            font-size: 120px;
            font-weight: bold;
            color: #dc3545;
        }
        .error-message {
            font-size: 24px;
            color: #6c757d;
        }
    </style>
</head>
<body>
    <div class="container error-container">
        <div class="error-code">404</div>
        <h1 class="error-message">Oups ! Page introuvable.</h1>
        <p class="text-muted">La page que vous recherchez a peut-être été déplacée ou supprimée.</p>
        <a href="index.do" class="btn btn-primary mt-3">Retour à l'accueil</a>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
