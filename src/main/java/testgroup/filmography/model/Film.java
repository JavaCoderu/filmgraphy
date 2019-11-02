package testgroup.filmography.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "films")
public class Film {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column
    private String title;
    @Column
    private int year;
    @Column
    private String genre;
    @Column
    private boolean watched;

    @Override
    public String toString() {
        return "Film: " +
                id +
                ", Название: '" + title + '\'' +
                ", Год: " + year +
                ", Жанр: '" + genre + '\'' +
                ", Просмотрен: " + ((watched)?"Да":"Нет");
    }
}
