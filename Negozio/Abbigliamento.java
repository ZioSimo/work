package EsempioEreditarietà;

public class Abbigliamento {
    //campi
    private int elementoID =0;
    private String descrizione = "-descrizione articolo";
    private char codiceColore = 'U';
    private double prezzo = 0.0;

    //costruttore
    public Abbigliamento(int elementoID, String descrizione, char codiceColore, double prezzo){
        //assegno alla variabile locale elemento id (argomento del costruttore) al campo omonimo
        this. elementoID = elementoID;
        this. descrizione = descrizione;
        this.codiceColore=codiceColore;
        this.prezzo=prezzo;
        setCodiceColore(codiceColore);

    }

    public void display(){
        System.out.println("ID: " + elementoID + " " + "Descrizione: " + descrizione + " " + "Codice colore: " + codiceColore + " " + "Prezzo: " + prezzo + " euro");
    }

    public void setElementoID(int elementoID) {
        this.elementoID = elementoID;
    }

    public int getElementoID() {
        return elementoID;
    }

    public void setDescrizione(String descrizione) {
        this.descrizione = descrizione;
    }

    public String getDescrizione() {
        return descrizione;
    }
    public char getCodiceColore() {
        return codiceColore;
    }

    public void setCodiceColore(char codiceColore) {
        this.codiceColore = codiceColore;
    }

    public double getPrezzo() {
        return prezzo;
    }

    public void setPrezzo(double prezzo) {
        this.prezzo = prezzo;
    }



}
