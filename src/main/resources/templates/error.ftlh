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
    <p>${errorMessage}</p>
    <a href="/characters" class="btn btn-primary">Back to Home</a>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
