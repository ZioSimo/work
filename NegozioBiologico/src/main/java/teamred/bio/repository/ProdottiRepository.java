package teamred.bio.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import teamred.bio.model.Categoria;
import teamred.bio.model.Prodotti;

import java.util.List;

public interface ProdottiRepository extends JpaRepository<Prodotti, Integer> {

    List<Prodotti> getAllByCategoria(Categoria categoria);

    List<Prodotti> getAllByPrezzoScontato(Double prezzoScontato);

    default List<Prodotti> getInOfferta(){
        return getAllByPrezzoScontatoGreaterThanEqual(0.0);
    }
    List<Prodotti> getAllByPrezzoScontatoGreaterThanEqual(Double prezzoScontato);
}
