package ProgettocarteUnoAlternativo;

public class Carta {
    /*identifico due variabili, entrambe di tipo string. In una avrò un valore carta quindi:
    un numero da 0 a 9 oppure una carta speciale con un effetto. Nell'altra variabile metto il colore della carta
    che potrà essere: giallo, verde, blu, rosso e nero. */

    String valore;
    String colore;

    //Ho creato il metodo "impostacarta" a cui passerò il numero ed il valore della carta

    public void impostaCarta(String numeroCarta, String coloreCarta) {
        valore = numeroCarta;
        colore = coloreCarta;

    }
 //controlla se due carte sono compatibili (metodo generale)
    public boolean confrontaCarta(Carta altraCarta){
        if (colore.equals("nero") || altraCarta.colore.equals("nero")) { //controlla se il colore della carta è nero e se la carta che stiamo passando è di colore nero
            return true;
        }
        if (valore.equals(altraCarta.valore) || colore.equals(altraCarta.colore)) {//controllo se numero e colore  della carta sia idonea
                                                                                   //quindi compatibile e restituirà un valore vero
            return true;
        }
        else return false;
        }

    }


