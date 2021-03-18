package teamred.bio.model;


import javax.persistence.*;

@Entity
public class Prodotti {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int IDProdotto;

    @ManyToOne
    @JoinColumn(name="IDCategoria")
    private Categoria categoria;

    @Column
    private String NomeProdotto;

    @Column
    private String DescrizioneProdotto;

    @Column
    private double PrezzoProdotto;

    @Column
    private int QuantitaProdotto;

    @Column
    private String Ingredienti;

    @Column
    private String Allergeni;

    @Column
    private Double prezzoScontato;

    @Column
    private String Immagine;

    @Column
    private String Sconto;

    public String getSconto() {
        return Sconto;
    }

    public void setSconto(String sconto) {
        Sconto = sconto;
    }


    public String getImmagine() {
        return Immagine;
    }

    public void setImmagine(String immagine) {
        Immagine = immagine;
    }


    public String getDescrizioneProdotto() {
        return DescrizioneProdotto;
    }

    public void setDescrizioneProdotto(String descrizioneProdotto) {
        DescrizioneProdotto = descrizioneProdotto;
    }


    public Double getPrezzoScontato() {
        return prezzoScontato;
    }

    public void setPrezzoScontato(Double prezzoScontato) {
        this.prezzoScontato = prezzoScontato;
    }

    public int getIDProdotto() {
        return IDProdotto;
    }

    public void setIDProdotto(int IDProdotto) {
        this.IDProdotto = IDProdotto;
    }

    public String getNomeProdotto() {
        return NomeProdotto;
    }

    public void setNomeProdotto(String nomeProdotto) {
        NomeProdotto = nomeProdotto;
    }

    public double getPrezzoProdotto() {
        return PrezzoProdotto;
    }

    public void setPrezzoProdotto(double prezzoProdotto) {
        PrezzoProdotto = prezzoProdotto;
    }

    public int getQuantitaProdotto() {
        return QuantitaProdotto;
    }

    public void setQuantitaProdotto(int quantitaProdotto) {
        QuantitaProdotto = quantitaProdotto;
    }

    public String getIngredienti() {
        return Ingredienti;
    }

    public void setIngredienti(String ingredienti) {
        Ingredienti = ingredienti;
    }

    public String getAllergeni() {
        return Allergeni;
    }

    public void setAllergeni(String allergeni) {
        Allergeni = allergeni;
    }





}
