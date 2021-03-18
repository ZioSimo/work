/*package teamred.bio.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import teamred.bio.exception.ResourceNotFoundException;
import teamred.bio.model.Prodotti;
import teamred.bio.repository.ProdottiRepository;

import java.util.List;

@Service
public class ProdottiServiceImpl implements ProdottiService {

    @Autowired
    private ProdottiRepository prodottiRepository;


    @Override
    @Transactional
    public List<Prodotti> getProdotti() {
        return prodottiRepository.findAll();
    }

    @Override
    @Transactional
    public void salvaProdotti(Prodotti theProdotti) {
        prodottiRepository.save(theProdotti);
    }

    @Override
    @Transactional
    public Prodotti getProdotti(int id) throws ResourceNotFoundException {
        return prodottiRepository.findById(id).orElseThrow(
                () -> new ResourceNotFoundException(id));
    }

    @Override
    @Transactional
    public void deleteProdotti(int theId) {
        prodottiRepository.deleteById(theId);
    }
}*/
