package teamred.bio.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import teamred.bio.model.Carrello;
import teamred.bio.model.Categoria;

import teamred.bio.model.Prodotti;
import teamred.bio.repository.CarrelloRepository;
import teamred.bio.repository.ProdottiRepository;


import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.regex.Pattern;

@Controller
@RequestMapping(path = "/")
public class MenuController {

    @Autowired
    ProdottiRepository prodottiRepository;

    @Autowired
    CarrelloRepository carrelloRepository;


    @GetMapping
    public String mostraHomePage(Model model) {
        List<Prodotti> listaOfferta = prodottiRepository.getInOfferta();
        model.addAttribute("listaProdotti", listaOfferta);
        return "index";
    }

    @GetMapping(path = "Prodotti")
    public String mostraPaginaProdotti(Model model) {
        List<Prodotti> listaProdotti = prodottiRepository.findAll();
        model.addAttribute("listaProdotti", listaProdotti);
        model.addAttribute("titolo", "Tutti i Prodotti");
        return "ProdottiProva";
    }

    @GetMapping(path = "ProdottiOfferta")
    public String mostraPaginaProdottiOfferta(Model model) {
        List<Prodotti> listaOfferta = prodottiRepository.getInOfferta();
        model.addAttribute("listaProdotti", listaOfferta);
        model.addAttribute("titolo", "Prodotti in Offerta");
        return "ProdottiProva";
    }

    @GetMapping("delete")
    public String deleteProdottiCarrello(@RequestParam("IDProdotto") int id) {
        carrelloRepository.deleteById(id);
        return "redirect:carrello";
    }

    @GetMapping("deleteall")
    public String svuotaCarrello() {
        carrelloRepository.deleteAll();
        return "CarrelloVuoto";
    }

    @GetMapping(path = "km0")
    public String mostraCategoriaKm0(Model model) {
        Categoria c = new Categoria();
        c.setIDCategoria(1);
        List<Prodotti> listaProdotti = prodottiRepository.getAllByCategoria(c);
        model.addAttribute("listaProdotti", listaProdotti);
        model.addAttribute("titolo", "Prodotti a KM0");
        return "ProdottiProva";

    }

    @GetMapping(path = "bevande")
    public String mostraCategoriaBevande(Model model) {
        Categoria c = new Categoria();
        c.setIDCategoria(2);
        List<Prodotti> listaProdotti = prodottiRepository.getAllByCategoria(c);
        model.addAttribute("listaProdotti", listaProdotti);
        model.addAttribute("titolo", "Bevande");
        return "ProdottiProva";


    }

    @GetMapping(path = "ricerca")
    public String cercaProdottiByNome(@RequestParam("nome") String nome, Model model) {
        List<Prodotti> listaProdotti = prodottiRepository.findAll();
        List<Prodotti> risultati = new ArrayList<>();
        for (int i = 0; i < listaProdotti.size(); i++) {
            if (Pattern.compile(Pattern.quote(nome), 2).matcher(((Prodotti) listaProdotti.get(i)).getNomeProdotto()).find()) {
                risultati.add(listaProdotti.get(i));
            }
        }
        model.addAttribute("listaProdotti", risultati);
        model.addAttribute("titolo", "Prodotti");
        System.out.print(nome);
        return "ProdottiProva";

    }

    @GetMapping(path = "aggiuntoalcarrello")
    public String aggiungiAlCarrello(@RequestParam("id") int id, @RequestParam int quantita, Model model) {
        Carrello c = new Carrello();
        c.setIDProdotto(id);
        Optional<Carrello> carrello = carrelloRepository.findById(id);
        if (carrello.isPresent()) {
            c.setQuantita(carrello.get().getQuantita() + quantita);
        } else c.setQuantita(quantita);

        carrelloRepository.save(c);

        List<Prodotti> listaOfferta = prodottiRepository.getInOfferta();
        model.addAttribute("listaProdotti", listaOfferta);

        return "AggiuntaAlCarrello";
    }

    @GetMapping(path = "modificacarrello")
    public String modificaCarrello(@RequestParam("id") int id, @RequestParam int quantita) {
        Carrello c = new Carrello();
        c.setIDProdotto(id);
        c.setQuantita(quantita);
        carrelloRepository.save(c);
        return "redirect:carrello";
    }

    @GetMapping(path = "dettaglioProdotto")
    public String mostraDettagliProdotto(@RequestParam int id, Model model) {
        model.addAttribute("Prodotto", prodottiRepository.findById(id).get());
        return "dettaglioProdotto";

    }

    @GetMapping(path = "carrello")
    public String mostraPaginaCarrello(Model model) {
        List<Carrello> listaCarrello = carrelloRepository.findAll();
        if(listaCarrello.isEmpty()){
            return "CarrelloVuoto";
        }
        model.addAttribute("listaCarrello", listaCarrello);
        return "carrello";
    }

    @GetMapping(path = "ricevuta")
    public String mostraFattura(Model model) {
        List<Carrello> listaCarrello = carrelloRepository.findAll();
        model.addAttribute("listaCarrello", listaCarrello);
        return "FatturaUltima";
    }

    @GetMapping(path = "svuota")
    public String eliminaCarrello() {
        carrelloRepository.deleteAll();
        return "redirect:/";
    }

}
