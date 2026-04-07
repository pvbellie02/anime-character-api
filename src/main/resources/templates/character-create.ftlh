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

    <!--
      action="/characters/" matches @PostMapping("/") in MvcController
      Input names must exactly match AnimeCharacter field names for Spring binding
    -->
    <form id="new-character" action="/characters/" method="post">
      <input type="text"   id="name"        name="name"        placeholder="Name"         required /><br>
      <input type="text"   id="anime"       name="anime"       placeholder="Anime"        required /><br>
      <input type="text"   id="role"        name="role"        placeholder="Role (Hero, Villain, Support...)" required /><br>
      <input type="text"   id="species"     name="species"     placeholder="Species" /><br>
      <input type="number" id="powerLevel"  name="powerLevel"  placeholder="Power Level"  step="0.1" /><br>
      <textarea id="description" name="description" placeholder="Description" rows="3"
                style="width:80%; margin:5px;" required></textarea><br>
      <button type="submit" class="btn btn-primary">Save</button>
      <a href="/characters" class="btn btn-outline-danger">Cancel</a>
    </form>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
