package com.Csc340.anime_character_api;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/characters")
public class AnimeCharacterController {

    private final AnimeCharacterService characterService;

    public AnimeCharacterController(AnimeCharacterService characterService) {
        this.characterService = characterService;
    }

    // GET all characters
    @GetMapping("/")
    public ResponseEntity<List<AnimeCharacter>> getAllCharacters() {
        return ResponseEntity.ok(characterService.getAllCharacters());
    }

    // GET character by ID
    @GetMapping("/{id}")
    public ResponseEntity<AnimeCharacter> getCharacterById(@PathVariable long id) {
        AnimeCharacter character = characterService.getCharacterById(id);
        if (character != null) {
            return ResponseEntity.ok(character);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // POST - add a new character
    @PostMapping("/")
    public ResponseEntity<AnimeCharacter> addCharacter(@RequestBody AnimeCharacter character) {
        return ResponseEntity.ok(characterService.addCharacter(character));
    }

    // PUT - update an existing character
    @PutMapping("/{id}")
    public ResponseEntity<AnimeCharacter> updateCharacter(@PathVariable long id, @RequestBody AnimeCharacter character) {
        AnimeCharacter updated = characterService.updateCharacter(id, character);
        if (updated != null) {
            return ResponseEntity.ok(updated);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    // DELETE - delete a character
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCharacter(@PathVariable long id) {
        characterService.deleteCharacter(id);
        return ResponseEntity.noContent().build();
    }

    // GET all characters from a specific anime
    @GetMapping("/anime/{anime}")
    public ResponseEntity<List<AnimeCharacter>> getCharactersByAnime(@PathVariable String anime) {
        return ResponseEntity.ok(characterService.getCharactersByAnime(anime));
    }

    // GET characters whose name contains a string
    @GetMapping("/search")
    public ResponseEntity<List<AnimeCharacter>> searchCharactersByName(@RequestParam String name) {
        return ResponseEntity.ok(characterService.searchCharactersByName(name));
    }
}