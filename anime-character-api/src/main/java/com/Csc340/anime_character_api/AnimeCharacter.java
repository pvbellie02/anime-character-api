package com.Csc340.anime_character_api;

import jakarta.persistence.*;

@Entity
@Table(name = "anime_characters")
public class AnimeCharacter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long characterId;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String description;

    private String anime;
    private String role;
    private double powerLevel;
    private String species;

    // Default constructor (required by JPA)
    public AnimeCharacter() {}

    // Full constructor
    public AnimeCharacter(String name, String description, String anime, String role, double powerLevel, String species) {
        this.name = name;
        this.description = description;
        this.anime = anime;
        this.role = role;
        this.powerLevel = powerLevel;
        this.species = species;
    }

    // Getters and Setters
    public long getCharacterId() { return characterId; }
    public void setCharacterId(long characterId) { this.characterId = characterId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getAnime() { return anime; }
    public void setAnime(String anime) { this.anime = anime; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }

    public double getPowerLevel() { return powerLevel; }
    public void setPowerLevel(double powerLevel) { this.powerLevel = powerLevel; }

    public String getSpecies() { return species; }
    public void setSpecies(String species) { this.species = species; }
}