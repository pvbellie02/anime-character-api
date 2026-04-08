<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>${title} | Anime Gallery</title>
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
    <h1>${character.name}</h1>

    <div class="details-card">

      <h2>Details</h2>
      <p><strong>ID:</strong> ${character.characterId?c}</p>
      <p><strong>Anime:</strong>
        <a href="/characters/anime/${character.anime!""}" style="color:#ff4757">${character.anime!""}</a>
      </p>
      <p><strong>Role:</strong> ${character.role!""}</p>
      <p><strong>Species:</strong> ${character.species!""}</p>
      <p><strong>Power Level:</strong> ${character.powerLevel}</p>

      <h2>Description</h2>
      <p>${character.description!""}</p>

    </div>

    <!-- Edit Character Form -->
    <h2 style="margin-top: 30px;">Edit Character</h2>
    <form class="character-form" action="/characters/update/${character.characterId?c}" method="post">
      <input type="hidden" name="characterId" value="${character.characterId?c}">

      <label for="name">Character Name:</label>
      <input type="text" id="name" name="name" value="${character.name}" required>

      <label for="anime">Anime:</label>
      <input type="text" id="anime" name="anime" value="${character.anime!""}">

      <label for="role">Role:</label>
      <input type="text" id="role" name="role" value="${character.role!""}">

      <label for="species">Species:</label>
      <input type="text" id="species" name="species" value="${character.species!""}">

      <label for="powerLevel">Power Level:</label>
      <input type="number" id="powerLevel" name="powerLevel" value="${character.powerLevel}" step="0.1">

      <label for="description">Description:</label>
      <textarea id="description" name="description">${character.description!""}</textarea>

      <button type="submit">Save Changes</button>
    </form>

    <!-- Delete Section -->
    <div class="delete-section">
      <span>Delete this character permanently</span>
      <a href="/characters/delete/${character.characterId?c}"
         class="btn btn-danger"
         onclick="return confirm('Are you sure you want to delete ${character.name}?')">Delete</a>
    </div>

    <div style="margin-top: 20px;">
      <a href="/characters" class="btn btn-secondary">← Back to Gallery</a>
    </div>

  </main>

</body>
</html>
