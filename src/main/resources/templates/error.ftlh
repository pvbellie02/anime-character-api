<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Error | Anime Gallery</title>
  <link rel="stylesheet" href="/css/style.css">
</head>
<body>

  <!-- Navigation Bar -->
  <nav class="navbar">
    <h2 class="logo">Anime Gallery</h2>
    <ul class="nav-links">
      <li><a href="/characters">Home</a></li>
      <li><a href="/characters/about">About</a></li>
      <li><a href="/characters/add">Add a Character</a></li>
    </ul>
  </nav>

  <!-- Main Content -->
  <main class="container">
    <h1>Oops!</h1>
    <div class="error-box">
      <p>${errorMessage}</p>
      <a href="/characters" class="btn btn-primary">Back to Gallery</a>
    </div>
  </main>

</body>
</html>