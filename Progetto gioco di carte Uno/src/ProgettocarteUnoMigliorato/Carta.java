package ProgettocarteUnoMigliorato;

public class Carta {
    /*Identifico due variabili, entrambe di tipo string. In una avrò un valore quindi:
    un numero da 0 a 9 oppure una carta speciale con un effetto.
    Nell'altra variabile metto il colore della carta che potrà essere: giallo, verde, blu, rosso e nero (carta speciale). */

    String valore;
    String colore;

    //Ho creato il metodo "impostacarta" a cui passerò il numero ed il valore della carta

    public void impostaCarta(String numeroCarta, String coloreCarta) {
        valore = numeroCarta; //valore carta sarà un valore string che potrà contenere un numero o una carta speciale
        colore = coloreCarta;

    }
    /*Metodo che controlla se due carte sono compatibili; per essere compatibili devono essere dello stesso colore o dello stesso numero.
    una carta speciale di colore nero può essere giocata sempre */

    public boolean confrontaCarta(Carta altraCarta){
        if (colore.equals("NERO") || altraCarta.colore.equals("NERO")) { //controlla se il colore della carta è nero e se la carta che stiamo passando è di colore nero
            return true;
        }
        if (valore.equals(altraCarta.valore) || colore.equals(altraCarta.colore)) {//controllo se numero e colore  della carta sia idonea quindi compatibile e restituirà un valore vero

            return true;
        }
        else return false;
        }

    }


