package EsempioEreditarietà;

public class Camicia extends Abbigliamento { //camicia prende i campi di abbigliamento
    private char stile = 'U';

    public Camicia(int elementoID, String descrizione, char codiceColore, double prezzo, char stile) {
        super(elementoID, descrizione, codiceColore, prezzo); //con la parola super andiamo a richiamare i campi del costruttore abbigliamento presente nella superclasse abbigliamento
        this.stile = stile;
    }

    //ovveride

    public void setCodiceColore(char codiceColore) { //metodo che era nella superclasse abbigliamento
        super.setCodiceColore(testColore(codiceColore)); // richiamiamo il metodo della classe  "setCodiceColore" che era private e gli inseriamo un char che ritorna dal emtodo testcolore dopo il controllo
                                                        //metodo che richiama un metodo

    }

    private static char testColore(char codiceColore) { //test colore è un metodo che controlla il codice colore
        switch (codiceColore) {
            case 'B':
            case 'G':
            case 'R':
            case 'U':
                return codiceColore;
            default:
                return 'X';
        }

    }

    public void setStile(char stile){
        this.stile=stile;

    }

    public char getStile() {
        return stile;
    }

    //sovrascrivo display

    public void display(){
        System.out.println("ID della Camicia: " + getElementoID() + ", " + "Descrizione della camicia: " + getDescrizione() + ", " + "Colore della camicia: " + getCodiceColore() +  ", " + "Prezzo della camicia: " + getPrezzo() + " euro" + ", " + "Stile della camicia: " + getStile());
    }
}
