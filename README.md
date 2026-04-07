# anime-character-api

A Restul CRUD API for managing anime characters, built with Spring Boot, Spring Data JPA, and PostgreSQL.

## Installation & Setup

### Prerequisites
- Java 21
- Maven (included via Maven Wrapper)
- Neon.tech PostgreSQL database

### Setup Instructions

1. Clone the repository:
```bash
git clone <your-repo-url>
cd anime-character-api
```

2. Configure your database in `src/main/resources/application.properties`: properties
spring.datasource.url=YOUR_NEON_CONNECTION_STRING
spring.datasource.username=YOUR_USERNAME
spring.datasource.password=YOUR_PASSWORD
spring.jpa.hibernate.ddl-auto=update
```

3. Run the application:
```bash
       ./mvnw spring-boot:run
```

The app will start at `http://localhost:8080`

---

## API Endpoints

### Get All Characters
```httpGET /api/characters/
```
Returns a list of all anime characters.

---

### Get Character by ID
```http GET /api/characters/{id}
```
Returns a single character by their ID. Returns 404 if not found.

---

### Add a New Character
```http POST /api/characters/
```
**Request Body:**
```json
{
    "name": "Goku",
    "description": "A Saiyan warrior who protects Earth from powerful threats",
    "anime": "Dragon Ball Z",
    "role": "Protagonist",
    "powerLevel": 999999.0,
    "species": "Saiyan"
}
```

---

### Update a Character
```http PUT /api/characters/{id}
```
Updates an existing character by ID. Returns 404 if not found.

---

### Delete a Character
```http DELETE /api/characters/{id}
```
Deletes a character by ID. Returns 204 No Content.

---

### Get Characters by Anime
```http GET /api/characters/anime/{anime}
```
Returns all characters from a specific anime.

**Example:** `/api/characters/anime/Naruto`

---

### Search Characters by Name
```http GET /api/characters/search?name={name}
```
Returns all characters whose name contains the search string.

**Example:** `/api/characters/search?name=Goku`


# Anime Character API — Assignment 4 (MVC Feature Branch)

A full-stack Spring Boot MVC web application for managing anime characters,
built on top of the Assignment 3 REST API.

## How to Run

1. Make sure your Neon PostgreSQL database is running (credentials in application.properties).
2. In VS Code terminal run: ./mvnw spring-boot:run
3. Open browser to http://localhost:8080 — redirects to the character list.

## MVC Routes (browser-facing)

| Method | URL                          | What it does                       |
|--------|------------------------------|------------------------------------|
| GET    | /characters                  | List all characters                |
| GET    | /characters/{id}             | View one character's details       |
| GET    | /characters/new              | Show the create form               |
| POST   | /characters/create           | Submit new character               |
| GET    | /characters/edit/{id}        | Show pre-filled update form        |
| POST   | /characters/update/{id}      | Submit updated character           |
| GET    | /characters/delete/{id}      | Delete character, redirect to list |
| GET    | /characters/search?name=X    | Search characters by name          |
| GET    | /characters/anime/{anime}    | Filter by anime series             |
| GET    | /characters/about            | About page                         |

## REST API Routes (JSON — Assignment 3, still available)

| Method | URL                          | What it does                  |
|--------|------------------------------|-------------------------------|
| GET    | /api/characters/             | Get all characters (JSON)     |
| GET    | /api/characters/{id}         | Get one character by ID       |
| POST   | /api/characters/             | Create character (JSON body)  |
| PUT    | /api/characters/{id}         | Update character (JSON body)  |
| DELETE | /api/characters/{id}         | Delete character              |
| GET    | /api/characters/anime/{a}    | Filter by anime (JSON)        |
| GET    | /api/characters/search?name  | Search by name (JSON)         |

## Demo Video

[Add your OneDrive link here]

## Tech Stack
- Java 21, Spring Boot 3.2, Spring Data JPA
- PostgreSQL (Neon)
- FreeMarker server-side templates
- Vanilla CSS (dark anime theme)
