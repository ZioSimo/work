package ProgettocarteUnoMigliorato;

import java.util.ArrayList;

public class Giocatore {

    public String nome;

    public ArrayList<Carta> carteInMano = new ArrayList<>();

 /*Ho creato il metodo "giocaCartaDallaMano" in modo che il giocatore giochi una carta dalla mano se quella carta sarà una carta idonea ovvero
    che corrisponderà alla carta in gioco per colore o numero. Nel caso non ha carte in mano idonee ad essere giocate ritornerà valore null.*/

    public Carta giocaCartaDallaMano(Carta cartaInGioco){
        for (Carta carta : carteInMano) {
            if (carta.confrontaCarta(cartaInGioco)) {
                carteInMano.remove(carta);
                return carta;


            }

        }
        return null;


//Con questo metodo passiamo una carta e viene messa nella mano del giocatore
    }
    public void mettiCartaInMano(Carta nuovaCarta) {
        carteInMano.add(nuovaCarta);

    }

// Con questo metodo contiamo quante carte di quel colore ha in mano il giocatore e restituisco il colore di cui il giocatore ha più carte.
    public String scegliColoredaGiocare() {
        //creo variabili contatore
        int coloreRosso = 0;
        int coloreVerde = 0;
        int coloreGiallo = 0;
        int coloreBlu = 0;
        for (Carta carta:carteInMano) {
            switch (carta.colore) {
                case "BLU":
                    coloreBlu++;
                    break;
                case "ROSSO":
                    coloreRosso++;
                    break;
                case "GIALLO":
                    coloreGiallo++;
                    break;
                case "VERDE":
                    coloreVerde++;
                    break;
            }
        }

        //Serie di confronti per trovare la variabile del colore più alto e restituisco il colore associato a quella variabile.
        if (coloreBlu>coloreGiallo) {

            if (coloreBlu>coloreVerde) {

                if (coloreBlu>coloreRosso) {
                    return "BLU";
                }
                else return "ROSSO";
            }
            else if (coloreVerde>coloreRosso) {
                return "VERDE";
            }
            else return "ROSSO";

        } else if(coloreGiallo>coloreVerde){

            if (coloreGiallo>coloreRosso) {
                return "GIALLO";
            }
            else return "ROSSO";

        } else if (coloreVerde>coloreRosso) {
            return "VERDE";
        }
        else return "ROSSO";


    }

}
