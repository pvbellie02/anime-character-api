<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Anime Character Gallery</title>
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
    <h1>${title}</h1>

    <!-- Search by Name (Extra Credit) -->
    <form class="search-bar" action="/characters/search" method="get">
      <input type="text" name="name" placeholder="Search by name...">
      <button type="submit">Search</button>
    </form>

    <!-- Character Grid -->
    <div class="character-grid">

      <#list characterList as character>
        <div class="character-card">
          <h3>${character.name}</h3>
          <p><strong>Anime:</strong>
            <a href="/characters/anime/${character.anime!""}" style="color:#ff4757">${character.anime!""}</a>
          </p>
          <p><strong>Role:</strong> ${character.role!""}</p>
          <p><strong>Species:</strong> ${character.species!""}</p>
          <p><strong>Power Level:</strong> ${character.powerLevel}</p>
          <a href="/characters/${character.characterId?c}">View Details</a>
        </div>
      </#list>

    </div>
  </main>

</body>
</html>
