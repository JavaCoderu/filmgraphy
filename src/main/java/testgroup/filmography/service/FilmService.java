package testgroup.filmography.service;

import testgroup.filmography.model.Film;
import java.util.List;

public interface FilmService {
    List<Film> allFilms(int page);
    void add(Film film);
    int filmsCount();
    void delete(Film film);
    void edit(Film film);
    Film getById(int id);
}