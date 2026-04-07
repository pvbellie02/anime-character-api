<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="/css/style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <title>${title}</title>
</head>

<body>
  <!-- Nav Bar -->
  <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #16213e;">
    <a class="navbar-brand" href="/characters" style="margin: 10px; color: #e94560; font-weight: bold;">
      &#9876; AnimeCharacterDB
    </a>
    <ul class="nav justify-content-end">
      <li class="nav-item">
        <a class="nav-link active" href="/characters">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/characters/add">Add Character</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/characters/about">About</a>
      </li>
    </ul>
  </nav>

  <div class="container" style="margin-top: 15px;">
    <h1>About Anime Character DB</h1>

    <div class="card" style="margin-top: 15px;">
      <div class="card-body">
        <h5 class="card-title">What is this?</h5>
        <p class="card-text">
          Anime Character DB is a full-stack Spring Boot MVC web application for managing anime characters.
          Built for CSC 340 Assignment 4 using server-side rendering with FreeMarker templates.
        </p>
      </div>
    </div>

    <div class="card" style="margin-top: 15px;">
      <div class="card-body">
        <h5 class="card-title">Tech Stack</h5>
        <ul>
          <li>Java 21 + Spring Boot 3.2</li>
          <li>Spring Data JPA</li>
          <li>PostgreSQL (Neon)</li>
          <li>FreeMarker Templates</li>
          <li>Bootstrap 5</li>
        </ul>
      </div>
    </div>

    <div class="card" style="margin-top: 15px;">
      <div class="card-body">
        <h5 class="card-title">Features</h5>
        <ul>
          <li>View all characters (gallery + table)</li>
          <li>View character details</li>
          <li>Add a new character</li>
          <li>Edit an existing character</li>
          <li>Delete a character</li>
          <li>Search characters by name</li>
          <li>Filter characters by anime</li>
        </ul>
      </div>
    </div>

    <a href="/characters" class="btn btn-primary" style="margin-top: 15px;">Back to Home</a>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
