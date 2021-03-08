package ProgettocarteUnoAlternativo;

import java.util.ArrayList;

public class Giocatore {

    public String nome;

    public ArrayList<Carta> carteInMano = new ArrayList<>();

    /*Ho creato il metodo "gioca carta dalla mano" in modo che il giocatore giochi una carta dalla mano se quella carta sarà una carta idonea  ovvero
     che corrisponderà alla carta in gioco per colore o numero oppure
     non potrà giocare nulla quindi ritornerà null perchè non ha carte idonee in mano. */

    public Carta giocaCartaDallaMano(Carta cartaInGioco){
        for (Carta carta : carteInMano) {
            if (carta.confrontaCarta(cartaInGioco)) {
                carteInMano.remove(carta);
                return carta;


            }

        }
        return null;


//con questo metodo passiamo una carta e viene messa nella mano del giocatore
    }
    public void mettiCartaInMano(Carta nuovaCarta) {
        carteInMano.add(nuovaCarta);

    }

    public String scegliColoredaGiocare() {
        int coloreRosso = 0;
        int coloreVerde = 0;
        int coloreGiallo = 0;
        int coloreBlu = 0;
        for (Carta carta:carteInMano) {
            switch (carta.colore) {
                case "blu":
                    coloreBlu++;
                    break;
                case "rosso":
                    coloreRosso++;
                    break;
                case "giallo":
                    coloreGiallo++;
                    break;
                case "verde":
                    coloreVerde++;
                    break;
            }
        }
        if (coloreBlu>coloreGiallo) {

            if (coloreBlu>coloreVerde) {

                if (coloreBlu>coloreRosso) {
                    return "blu";
                }
                else return "rosso";
            }
            else if (coloreVerde>coloreRosso) {
                return "verde";
            }
            else return "rosso";

        } else if(coloreGiallo>coloreVerde){

            if (coloreGiallo>coloreRosso) {
                return "giallo";
            }
            else return "rosso";

        } else if (coloreVerde>coloreRosso) {
            return "verde";
        }
        else return "rosso";


    }

}
