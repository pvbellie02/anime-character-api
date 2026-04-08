package com.Csc340.anime_character_api;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/characters")
public class AnimeCharacterMvcController {

    private final AnimeCharacterService characterService;

    public AnimeCharacterMvcController(AnimeCharacterService characterService) {
        this.characterService = characterService;
    }

    // GET all characters
    @GetMapping({"", "/"})
    public String getAllCharacters(Model model) {
        model.addAttribute("characterList", characterService.getAllCharacters());
        model.addAttribute("title", "All Anime Characters");
        return "character-list";
    }

    // GET one character by ID
    @GetMapping("/{id}")
    public String getCharacterById(@PathVariable long id, Model model) {
        AnimeCharacter character = characterService.getCharacterById(id);
        if (character != null) {
            model.addAttribute("character", character);
            model.addAttribute("title", character.getName());
        } else {
            model.addAttribute("errorMessage", "Character not found with ID: " + id);
            model.addAttribute("title", "Error");
            return "error";
        }
        return "character-details";
    }

    // GET characters by anime (Extra Credit)
    @GetMapping("/anime/{anime}")
    public String getCharactersByAnime(@PathVariable String anime, Model model) {
        model.addAttribute("characterList", characterService.getCharactersByAnime(anime));
        model.addAttribute("title", "Characters from: " + anime);
        return "character-list";
    }

    // GET search by name (Extra Credit)
    @GetMapping("/search")
    public String searchCharactersByName(@RequestParam String name, Model model) {
        model.addAttribute("characterList", characterService.searchCharactersByName(name));
        model.addAttribute("title", "Search Results for: " + name);
        return "character-list";
    }

    // GET delete character - redirects to list
    @GetMapping("/delete/{id}")
    public String deleteCharacter(@PathVariable long id) {
        characterService.deleteCharacter(id);
        return "redirect:/characters/";
    }

    // GET show create form
    @GetMapping("/add")
    public String showAddCharacterForm(Model model) {
        model.addAttribute("title", "Add New Character");
        return "character-create";
    }

    // POST create new character - no @RequestBody, data comes from form
    @PostMapping("/")
    public String addCharacter(AnimeCharacter character) {
        AnimeCharacter newCharacter = characterService.addCharacter(character);
        return "redirect:/characters/" + newCharacter.getCharacterId();
    }

    // POST update existing character - no @RequestBody, data comes from form
    @PostMapping("/update/{id}")
    public String updateCharacter(@PathVariable long id, AnimeCharacter character) {
        AnimeCharacter updated = characterService.updateCharacter(id, character);
        if (updated != null) {
            return "redirect:/characters/" + updated.getCharacterId();
        } else {
            return "redirect:/characters/";
        }
    }

    // GET about page
    @GetMapping("/about")
    public String about(Model model) {
        model.addAttribute("title", "About");
        return "about";
    }
}
