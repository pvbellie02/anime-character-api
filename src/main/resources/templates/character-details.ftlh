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
    <h1>${title} <span style="float:right"><a href="/characters" class="btn btn-primary">Go Back</a></span></h1>

    <!-- Character Details Card -->
    <div class="card">
      <h5 class="card-header">${character.name}</h5>
      <div class="card-body">
        <h5 class="card-title">ID: ${character.characterId?c}</h5>
        <p class="card-text">Name: ${character.name}</p>
        <p class="card-text">
          Anime: <a href="/characters/anime/${character.anime!""}" style="color:#e94560">${character.anime!""}</a>
        </p>
        <p class="card-text">Role: ${character.role!""}</p>
        <p class="card-text">Species: ${character.species!""}</p>
        <p class="card-text">Power Level: ${character.powerLevel}</p>
        <p class="card-text">Description: ${character.description!""}</p>
      </div>
    </div>

    <!-- Edit Character Form (on same page, like the demo) -->
    <div class="alert alert-primary" role="alert" style="margin-top: 10px;">Edit Character</div>
    <form id="edit-character" action="/characters/update/${character.characterId?c}" method="post">
      <input type="text"   id="characterId"  name="characterId"  value="${character.characterId?c}" readonly />
      <input type="text"   id="name"         name="name"         value="${character.name}"           placeholder="Name" />
      <input type="text"   id="anime"        name="anime"        value="${character.anime!""}"       placeholder="Anime" />
      <input type="text"   id="role"         name="role"         value="${character.role!""}"         placeholder="Role" />
      <input type="text"   id="species"      name="species"      value="${character.species!""}"     placeholder="Species" />
      <input type="number" id="powerLevel"   name="powerLevel"   value="${character.powerLevel}"     placeholder="Power Level" step="0.1" /><br>
      <textarea id="description" name="description" placeholder="Description" rows="3" style="width:80%; margin:5px;">${character.description!""}</textarea><br>
      <button type="submit" class="btn btn-primary">Save Changes</button>
    </form>

    <!-- Delete Character -->
    <div class="alert alert-danger" role="alert">
      Delete Character
      <a style="float: right;" href="/characters/delete/${character.characterId?c}"
         class="btn btn-danger"
         onclick="return confirm('Are you sure you want to delete ${character.name}?')">Delete</a>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
