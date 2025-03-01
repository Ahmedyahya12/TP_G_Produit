<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">MonSite</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" id="home" href="index.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="saisie" href="Saisie.php">Saisi</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<script>
    // Récupère l'URL actuelle
    let currentPage = window.location.pathname.split('/').pop();
    
    // Ajoute la classe active au lien correspondant
    if (currentPage === 'index.php') {
        document.getElementById('home').classList.add('active');
    } else if (currentPage === 'Saisie.php') {
        document.getElementById('saisie').classList.add('active');
    }
</script>
