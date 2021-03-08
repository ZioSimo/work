package ProgettoCarteUno;

import java.util.ArrayList;
import java.util.Collections;


public class Mazzo {
/* Ho identificato l'arraylist mazzo è l'ho caricato con un ciclo inserendo due istruzioni uguali per ogni colore in modo da inserire un doppione
L'array list è un array di oggetti carta */

    public ArrayList<Carta> mazzo;

    // metodo per non ripetere creazione e caricamento della carta con varie istruzioni.
    public void creaCarte(String coloreDellaCarta, int valoreDellaCarta) {
        Carta nuovaCarta = new Carta();
        nuovaCarta.impostaCarta(valoreDellaCarta, coloreDellaCarta); //creo una carta con un colore e un numero
        mazzo.add(nuovaCarta);

    }

//Carico il mazzo con un ciclo chiamando il metodo creaCarta.

    public void setMazzo() {
        mazzo = new ArrayList<>();

        for (int i = 0; i < 10; i++) {
            creaCarte("ROSSO", i);
            creaCarte("ROSSO", i);
            creaCarte("GIALLO", i);
            creaCarte("GIALLO", i);
            creaCarte("BLU", i);
            creaCarte("BLU", i);
            creaCarte("VERDE", i);
            creaCarte("VERDE", i);

        }

// Ho inserito una funziona che mischia il mazzo

        Collections.shuffle(mazzo);

    }
//Ho creato un metodo che prima controlla se il mazzo è vuoto e nel caso lo carica, altrimenti dal mazzo toglie la prima carta.
    public Carta togliPrimaCartaDalMazzo() {
        if (mazzo.isEmpty()) {
            setMazzo();
        }

        return mazzo.remove(0);
    }



    }

