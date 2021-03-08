package ProgettocarteUnoMigliorato;

import java.util.ArrayList;
import java.util.Collections;


public class Mazzo {

    // metodo per non ripetere creazione e caricamento della carta con varie istruzioni, così facendo posso utilizzare solamente una stringa
    public void creaCarte(String coloreDellaCarta, String valoreDellaCarta) {
        Carta nuovaCarta = new Carta();
        nuovaCarta.impostaCarta(valoreDellaCarta, coloreDellaCarta);
        mazzo.add(nuovaCarta);

    }

/* Ho identificato l'arraylist mazzo è l'ho caricato con una serie di cicli "for" ripetuti per avere un mazzo completo
L'array list è un array di oggetti carta */


    public ArrayList<Carta> mazzo;

    public void setMazzo() {
        mazzo = new ArrayList<>();

        /* Ho creato un ciclo for per caricare le carte numeriche nel mazzo concatenando una stringa vuota
        con l'indice che sarà un intero per trasformarlo in una stringa. */

        for (int i = 0; i < 10; i++) {
            creaCarte("ROSSO", "" + i);
            creaCarte("ROSSO", "" + i);
            creaCarte("GIALLO", "" + i);
            creaCarte("GIALLO", "" + i);
            creaCarte("BLU", "" + i);
            creaCarte("BLU", "" + i);
            creaCarte("VERDE", "" + i);
            creaCarte("VERDE", "" + i);

        }




        for (int i=0; i <3; i++) {
            creaCarte("NERO", "+4");
            creaCarte("NERO", "CAMBIA COLORE");
            creaCarte("GIALLO", "+2");
            creaCarte("ROSSO", "+2");
            creaCarte("BLU", "+2");
            creaCarte("VERDE", "+2");
            creaCarte("GIALLO", "CAMBIO GIRO");
            creaCarte("ROSSO", "CAMBIO GIRO");
            creaCarte("BLU", "CAMBIO GIRO");
            creaCarte("VERDE", "CAMBIO GIRO");
            creaCarte("GIALLO", "STOP");
            creaCarte("ROSSO", "STOP");
            creaCarte("BLU", "STOP");
            creaCarte("VERDE", "STOP");
        }

//Ho usato una funziona che mischia l'array mazzo

        Collections.shuffle(mazzo);

    }
//Ho creato un metodo che prima controlla se il mazzo è vuoto e nel caso lo carica, altrimenti dal mazzo toglie la prima carta,

    public Carta togliPrimaCartaDalMazzo() {
        if (mazzo.isEmpty()) {
            setMazzo();
        }

        return mazzo.remove(0);
    }


    }

