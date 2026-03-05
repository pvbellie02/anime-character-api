package com.Csc340.anime_character_api;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnimeCharacterRepository extends JpaRepository<AnimeCharacter, Long> {

    // Get all characters from a specific anime
    List<AnimeCharacter> findByAnime(String anime);

    // Get all characters whose name contains a string (case-insensitive)
    List<AnimeCharacter> findByNameContainingIgnoreCase(String name);
}