package ProgettoCarteUno;

import java. util.ArrayList;

public class Giocatori {

    public ArrayList<Carta> carteInMano = new ArrayList<>();

    /*Ho creato il metodo "giocaCartaDallaMano" in modo che il giocatore giochi una carta dalla mano se quella carta sarà una carta idonea ovvero
    che corrisponderà alla carta in gioco per colore o numero. Nel caso non ha carte in mano idonee ad essere giocate ritornerà null.*/

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

}
