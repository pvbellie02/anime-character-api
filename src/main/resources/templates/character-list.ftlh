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
    <h1>${title}</h1>
    <a href="/characters/add" class="btn btn-primary" style="float:right;">+ Add New Character</a>

    <!-- Search by Name (Extra Credit) -->
    <form action="/characters/search" method="get">
      <input type="text" name="name" placeholder="Search by name &#128270;">
      <button type="submit" class="btn btn-primary btn-sm">Search</button>
    </form>

    <!-- Character Cards Gallery -->
    <div class="row row-cols-3" style="margin-top: 15px;">
      <#list characterList as character>
        <div class="col">
          <div class="card shadow-sm">
            <div class="card-body">
              <h5 class="card-title">${character.name}</h5>
              <p class="card-text" style="color: #e94560;">
                <!-- Clicking anime name filters by that anime (Extra Credit) -->
                <a href="/characters/anime/${character.anime!""}" style="color: #e94560;">${character.anime!""}</a>
              </p>
              <p class="card-text">${character.role!""}</p>
              <p class="card-text">${character.description!""}</p>
            </div>
            <a href="/characters/${character.characterId?c}" class="btn btn-sm btn-primary">View Details</a>
          </div>
        </div>
      </#list>
    </div>

    <!-- Character Table -->
    <table class="table table-striped rounded-3 overflow-hidden" style="margin-top: 20px;">
      <thead>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Anime</th>
          <th>Role</th>
          <th>Species</th>
          <th>Power Level</th>
        </tr>
      </thead>
      <tbody>
        <#list characterList as character>
          <tr>
            <td><a href="/characters/${character.characterId?c}" style="color:#eaeaea">${character.characterId?c}</a></td>
            <td>${character.name}</td>
            <td><a href="/characters/anime/${character.anime!""}" style="color:#eaeaea">${character.anime!""}</a></td>
            <td>${character.role!""}</td>
            <td>${character.species!""}</td>
            <td>${character.powerLevel}</td>
          </tr>
        </#list>
      </tbody>
    </table>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
