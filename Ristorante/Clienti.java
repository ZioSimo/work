package Ristorante;

import Ristorante.Cameriere;

public class Clienti {

    public static void main(String[] args){
        String ordinazioneLui = "Pizza quattro formaggi";
        String ordinazioneLei = "Pizza alle verdure";
        String bevanda = "Vino della casa";

        System.out.println("I clienti elencano le ordinazione al cameriere");

        Cameriere mioCameriere =new Cameriere(ordinazioneLui, ordinazioneLei, bevanda);

        System.out.println("I clienti mangiano quanto ordinato");


    }
}
