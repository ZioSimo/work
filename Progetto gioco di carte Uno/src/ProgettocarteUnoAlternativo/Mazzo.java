package ProgettocarteUnoAlternativo;

import java.util.ArrayList;
import java.util.Collections;


public class Mazzo {
/* Ho identificato l'arraylist mazzo è l'ho caricato con una serie di cicli "for" ripetuti per due volte in modo da avere 80 carte nel mazzo
perchè ogni carta può avere il suo doppione.
l'arry list è un array di oggetti carta */

    public ArrayList<Carta> mazzo;

    public void setMazzo() {
        mazzo = new ArrayList<>();

        for (int i = 0; i < 10; i++) {
            Carta nuovaCarta = new Carta();
            String valoreCarta = "" + i;
            nuovaCarta.impostaCarta(valoreCarta, "rosso");
            mazzo.add(nuovaCarta);
        }

        for (int i = 0; i < 10; i++) {
            Carta nuovaCarta = new Carta();
            String valoreCarta = "" + i;
            nuovaCarta.impostaCarta(valoreCarta, "rosso");
            mazzo.add(nuovaCarta);
        }

        for (int i = 0; i < 10; i++) {
            Carta nuovaCarta = new Carta();
            String valoreCarta = "" + i;
            nuovaCarta.impostaCarta(valoreCarta, "blu");
            mazzo.add(nuovaCarta);
        }

        for (int i = 0; i < 10; i++) {
            Carta nuovaCarta = new Carta();
            String valoreCarta = "" + i;
            nuovaCarta.impostaCarta(valoreCarta, "blu");
            mazzo.add(nuovaCarta);
        }

        for (int i = 0; i < 10; i++) {
            Carta nuovaCarta = new Carta();
            String valoreCarta = "" + i;
            nuovaCarta.impostaCarta(valoreCarta, "verde");
            mazzo.add(nuovaCarta);
        }


        for (int i = 0; i < 10; i++) {
            Carta nuovaCarta = new Carta();
            String valoreCarta = "" + i;
            nuovaCarta.impostaCarta(valoreCarta, "verde");
            mazzo.add(nuovaCarta);
        }
        for (int i = 0; i < 10; i++) {
            Carta nuovaCarta = new Carta();
            String valoreCarta = "" + i;
            nuovaCarta.impostaCarta(valoreCarta, "giallo");
            mazzo.add(nuovaCarta);
        }

        for (int i = 0; i < 10; i++) {
            Carta nuovaCarta = new Carta();
            String valoreCarta = "" + i;
            nuovaCarta.impostaCarta(valoreCarta, "giallo");
            mazzo.add(nuovaCarta);
        }

        for (int i=0; i <2; i++) {
            creaCarte("nero", "+4");
            creaCarte("nero", "cambia colore");
            creaCarte("giallo", "+2");
            creaCarte("rosso", "+2");
            creaCarte("blu", "+2");
            creaCarte("verde", "+2");
            creaCarte("giallo", "cambio giro");
            creaCarte("rosso", "cambio giro");
            creaCarte("blu", "cambio giro");
            creaCarte("verde", "cambio giro");
            creaCarte("giallo", "stop");
            creaCarte("rosso", "stop");
            creaCarte("blu", "stop");
            creaCarte("verde", "stop");
        }

// in seguito ho messo una funziona che mischia il mazzo

        Collections.shuffle(mazzo); //funzione che permette di mischiare le carte del mazzo

    }

    public void creaCarte(String coloreDellaCarta, String valoreDellaCarta) {
        Carta nuovaCarta = new Carta();
        nuovaCarta.impostaCarta(valoreDellaCarta, coloreDellaCarta);
        mazzo.add(nuovaCarta);

    }
//ho creato un metodo pescacarta che prima controlla se il mazzo è vuoto e nel caso lo carica, altrimenti dal mazzo toglie la prima carta dal mazzo
    public Carta togliPrimaCartaDalMazzo() {
        if (mazzo.isEmpty()) {
            setMazzo();
        }

        return mazzo.remove(0);
    }


    }

