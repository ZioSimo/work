package teamred.bio.model;


import javax.persistence.*;

@Entity
public class Carrello {

    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    private int IDProdotto;

    private int Quantita;

    @OneToOne
    @JoinColumn(name="IDProdotto")
    private Prodotti prodotto;

    public Prodotti getProdotto() {
        return prodotto;
    }

    public void setProdotto(Prodotti prodotto) {
        this.prodotto = prodotto;
    }


    public int getIDProdotto() {
        return IDProdotto;
    }

    public void setIDProdotto(int IDProdotto) {
        this.IDProdotto = IDProdotto;
    }

    public int getQuantita() {
        return Quantita;
    }

    public void setQuantita(int quantita) {
        this.Quantita = quantita;
    }





}
