package teamred.bio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import teamred.bio.model.Carrello;


public interface CarrelloRepository extends JpaRepository<Carrello, Integer> {
}
