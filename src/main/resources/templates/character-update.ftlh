<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Edit Character | Anime Gallery</title>
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
    <h1>Edit: ${character.name}</h1>

    <form class="character-form" action="/characters/update/${character.characterId?c}" method="post">
      <input type="hidden" name="characterId" value="${character.characterId?c}">

      <label for="name">Character Name:</label>
      <input type="text" id="name" name="name" value="${character.name}" required>

      <label for="anime">Anime / Universe:</label>
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

    <div style="margin-top: 15px;">
      <a href="/characters/${character.characterId?c}" class="btn btn-secondary">Cancel</a>
    </div>

  </main>

</body>
</html>
