package ProgettocarteUnoAlternativo;

import java.util.ArrayList;
import java.util.Collections;

public class Partita {
//mi creo gli oggetti
    public ArrayList<Giocatore> giocatori = new ArrayList<>();
    public Mazzo mazzo;
    public Carta cartaATerra;
    public int posizioneGiocatoreDiTurno = 0;
    public boolean cartaSpeciale = false;

//istanzio gli oggetti e do le carte ai giocatori con un ciclo for, ho implementato due funzioni prendicarta e pescacarta perchè con una
    // "pesca carta" prendo la prima carta dal mazzo, mentre con la funzione "prendicarta" passiamo una carta mettendola in mano al giocatore
    // le uso tutte e due insieme per far si che la prima carta presa dal mazzo finisca in mano al giocatore.
    public void setPartita(){
        giocatori.add(new Giocatore());
        giocatori.get(0).nome = "Mario";
        giocatori.add(new Giocatore());
        giocatori.get(1).nome = "Simone";
        giocatori.add(new Giocatore());
        giocatori.get(2).nome = "Giuseppe";

        mazzo = new Mazzo();
        mazzo.setMazzo();
        for (int i=0; i < 7; i++) {
            for (Giocatore giocatore : giocatori) {
                giocatore.mettiCartaInMano(mazzo.togliPrimaCartaDalMazzo()); //pesco una carta dal mazzo e la do in mano ad un giocatore
            }
        }
        cartaATerra = mazzo.togliPrimaCartaDalMazzo(); // con la funzione pescacarta, pesca la carta del mazzo e la mette a terrà


    }

    public void turno(Giocatore giocatore) {
        System.out.println("La carta in gioco è: " + cartaATerra.valore + " " + cartaATerra.colore);
        if (cartaSpeciale) {
            cartaSpeciale = false;
            if (cartaATerra.valore.equals("+4")) {
                System.out.println(giocatore.nome + " pesca 4 carte");
                for (int i = 0; i < 4; i++) {
                    giocatore.mettiCartaInMano(mazzo.togliPrimaCartaDalMazzo());
                }
                return;
            }

            if (cartaATerra.valore.equals("+2")) {
                System.out.println(giocatore.nome + " pesca 2 carte");
                for (int i = 0; i < 2; i++) {
                    giocatore.mettiCartaInMano(mazzo.togliPrimaCartaDalMazzo());
                }
                return;
            }

            if (cartaATerra.valore.equals("stop")) {
                System.out.println(giocatore.nome + " non può giocare questo turno ");
                return;
            }
        }



        Carta cartaGiocata = giocatore.giocaCartaDallaMano(cartaATerra); //giocatore 1 gioca la carta guardando la carta a terra e la carta che gioca finisce in carta giocata
                                                                           //se non ha carte da giocare, carta giocata diventan null
        if (cartaGiocata==null) {//se la condizione è vera pesca la carta dal mazzo
            giocatore.mettiCartaInMano(mazzo.togliPrimaCartaDalMazzo());
            System.out.println(giocatore.nome + " non aveva carte adatte in mano ed ha pescato dal mazzo");
        } else {
            cartaATerra = cartaGiocata; //gioca la carta che ha in mano perchè idonea
            System.out.println(giocatore.nome + " ha giocato: " + cartaATerra.valore + " " + cartaATerra.colore);

            switch (cartaGiocata.valore) {
                case "+4": cartaGiocata.colore = giocatore.scegliColoredaGiocare();
                    System.out.println(giocatore.nome + "ha scelto il colore " + cartaGiocata.colore);
                cartaSpeciale= true;
                break;
                case "cambia colore": cartaGiocata.colore = giocatore.scegliColoredaGiocare();
                    System.out.println(giocatore.nome + " ha scelto il colore " + cartaGiocata.colore);
                break;
                case "cambio giro":
                    Collections.reverse(giocatori);
                    posizioneGiocatoreDiTurno = giocatori.indexOf(giocatore);
                    break;
                case "+2": cartaSpeciale=true;
                break;
                case "stop": cartaSpeciale=true;
                break;

            }
        }



        if (giocatore.carteInMano.size()==1){ //controllo l'array list carte in mano e vedo se è uguale ad 1 allora visualizzo
            //il messaggio "UNO"
            System.out.println(giocatore.nome + " ha detto: 'UNO!'");
        }

        if (giocatore.carteInMano.isEmpty()) { //controllo se il giocatore 1 non ha più carte in mano e interrompo il turno del
            //giocatore due.
            return;
        }
    }


    public void giocaPartita(){
        setPartita(); //richiamo il metodo set partita
        System.out.println("-------------- INIZIO PARTITA --------------");
        System.out.println();
        System.out.println("Abbiamo dato le carte ai giocatori");
        System.out.println();
        Collections.shuffle(giocatori);
        Giocatore giocatoreDiTurno = giocatori.get(0);
        int numeroTurni = 1; //contatore turni
        while (giocatoreDiTurno.carteInMano.size() > 0) { //Con questo while analizzo la condizione che
            //entrambi i giocatori devono avere carte in mano ed inizio il turno
            System.out.println("Turno: " + numeroTurni++); //incremento mano mano che passano i turni il contatore
            turno(giocatoreDiTurno);
            if(giocatoreDiTurno.carteInMano.isEmpty()){
                break;
            }
            System.out.println("-------------------------");
            posizioneGiocatoreDiTurno++;
            if (posizioneGiocatoreDiTurno>=giocatori.size()){
                posizioneGiocatoreDiTurno=0;
            }
            giocatoreDiTurno=giocatori.get(posizioneGiocatoreDiTurno);

        }

        System.out.println(giocatoreDiTurno.nome + " Ha vinto!");





        System.out.println();

        System.out.println("------------- FINE PARTITA --------------------");


        }



    }





