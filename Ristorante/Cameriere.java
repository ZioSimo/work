package Ristorante;

public class Cameriere {

    public Cameriere(String ordinazioneLui, String ordinazioneLei, String bevanda){

        System.out.println("Il cameriere porta " +bevanda + " al tavolo");
        System.out.println("Il cameriere chiede al pizzaiolo: " + ordinazioneLui + ", " + ordinazioneLei); //ord1 e ord2 corrispondono a quelle nella stessa posizione del metodo main
        Pizzaiolo mioPizzaiolo = new Pizzaiolo(ordinazioneLui, ordinazioneLei);
        System.out.println("Il cameriere consegna " + ordinazioneLui + ", " + ordinazioneLei + " al tavolo");

    }
}






