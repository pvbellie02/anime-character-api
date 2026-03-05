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

---

## Demo Video
[Click here to watch the demo](<https://uncg-my.sharepoint.com/:u:/g/personal/pvbellie_uncg_edu/IQDFG9LXzpFbR4fr2RvXfbm7AfdlPCaV3x76BbA5oYEErh8?email=SENTINI%40uncg.edu&e=OpTWZk>)