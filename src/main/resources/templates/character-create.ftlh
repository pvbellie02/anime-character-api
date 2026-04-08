<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add a Character | Anime Gallery</title>
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
    <h1>Add a New Anime Character</h1>

    <!--
      action="/characters/" matches @PostMapping("/") in AnimeCharacterMvcController
      Input names must match AnimeCharacter field names exactly for Spring to bind them
    -->
    <form class="character-form" action="/characters/" method="post">

      <label for="name">Character Name:</label>
      <input type="text" id="name" name="name" placeholder="Enter character name" required>

      <label for="anime">Anime / Universe:</label>
      <input type="text" id="anime" name="anime" placeholder="Enter anime name" required>

      <label for="role">Role:</label>
      <input type="text" id="role" name="role" placeholder="Enter role (e.g., Hero, Villain)" required>

      <label for="species">Species:</label>
      <input type="text" id="species" name="species" placeholder="Enter species (e.g., Human, Demon)">

      <label for="powerLevel">Power Level:</label>
      <input type="number" id="powerLevel" name="powerLevel" placeholder="Enter power level (e.g., 85)" step="0.1">

      <label for="description">Description:</label>
      <textarea id="description" name="description" placeholder="Enter a short description" required></textarea>

      <button type="submit">Add Character</button>
    </form>

  </main>

</body>
</html>
