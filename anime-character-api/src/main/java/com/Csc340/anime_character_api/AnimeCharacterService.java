package com.Csc340.anime_character_api;

import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnimeCharacterService {

    private final AnimeCharacterRepository characterRepository;

    public AnimeCharacterService(AnimeCharacterRepository characterRepository) {
        this.characterRepository = characterRepository;
    }

    // Get all characters
    public List<AnimeCharacter> getAllCharacters() {
        return characterRepository.findAll();
    }

    // Get character by ID
    public AnimeCharacter getCharacterById(long id) {
        return characterRepository.findById(id).orElse(null);
    }

    // Add a new character
    public AnimeCharacter addCharacter(AnimeCharacter character) {
        return characterRepository.save(character);
    }

    // Update an existing character
    public AnimeCharacter updateCharacter(long id, AnimeCharacter updatedCharacter) {
        AnimeCharacter existing = getCharacterById(id);
        if (existing != null) {
            existing.setName(updatedCharacter.getName());
            existing.setDescription(updatedCharacter.getDescription());
            existing.setAnime(updatedCharacter.getAnime());
            existing.setRole(updatedCharacter.getRole());
            existing.setPowerLevel(updatedCharacter.getPowerLevel());
            existing.setSpecies(updatedCharacter.getSpecies());
            return characterRepository.save(existing);
        }
        return null;
    }

    // Delete a character
    public void deleteCharacter(long id) {
        characterRepository.deleteById(id);
    }

    // Get all characters from a specific anime
    public List<AnimeCharacter> getCharactersByAnime(String anime) {
        return characterRepository.findByAnime(anime);
    }

    // Search characters by name
    public List<AnimeCharacter> searchCharactersByName(String name) {
        return characterRepository.findByNameContainingIgnoreCase(name);
    }
}