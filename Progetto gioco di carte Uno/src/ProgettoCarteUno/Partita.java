package ProgettoCarteUno;

public class Partita {
//Creo gli oggetti
    Giocatori giocatore1;
    Giocatori giocatore2;
    Mazzo mazzo;
    Carta cartaATerra;

/*Istanzio gli oggetti e do le carte ai giocatori con un ciclo for. Ho richiamato i due metodi "togliPrimaCartaDalMazzo" e "mettiCartaInMano" perché
con la prima funzione prendo la prima carta dal mazzo, mentre con la seconda passiamo la carta mettendola in mano al giocatore;
le uso tutte e due insieme per far si che la prima carta presa dal mazzo finisca in mano al giocatore. */

    public void setPartita(){
        giocatore1 = new Giocatori();
        giocatore2 = new Giocatori();
        mazzo = new Mazzo();
        mazzo.setMazzo();
        for (int i=0; i < 7; i++){
            giocatore1.mettiCartaInMano(mazzo.togliPrimaCartaDalMazzo()); //toglie la prima carta dal mazzo e la do in mano al un giocatore
            giocatore2.mettiCartaInMano(mazzo.togliPrimaCartaDalMazzo());
        }
        cartaATerra = mazzo.togliPrimaCartaDalMazzo(); // con questa funzione, prende la prima carta del mazzo e la mette a terrà


    }
/*Inizio a gestire i turni dei giocatori tenendo conto che se il valore di carta giocata è nulla allora si pesca dal mazzo
altrimenti il giocatore gioca la carta che ha in mano */

    public void turno(){
        System.out.println("La carta in gioco è: " + cartaATerra.numero + " " + cartaATerra.colore);

        Carta cartaGiocata = giocatore1.giocaCartaDallaMano(cartaATerra); //giocatore 1 gioca la carta guardando la carta a terra e la carta che gioca finisce in carta giocata se non ha carte da giocare, carta giocata diventan null

        if (cartaGiocata==null) {//se la condizione è vera pesca la carta dal mazzo
            giocatore1.mettiCartaInMano(mazzo.togliPrimaCartaDalMazzo());
            System.out.println("Il giocatore 1 non aveva carte adatte in mano ed ha pescato dal mazzo");
        } else {
            cartaATerra = cartaGiocata; //gioca la carta che ha in mano perchè idonea
            System.out.println("Il giocatore uno ha giocato: " + cartaATerra.numero + " " + cartaATerra.colore);
        }

        if (giocatore1.carteInMano.size()==1){ //Verifico se  l'array list carteInMano ha una sola carta e nel caso stampo il messaggio "UNO".

            System.out.println("Il giocatore uno ha detto: 'UNO!'");
        }

        if (giocatore1.carteInMano.isEmpty()) { //Controllo se il giocatore 1 non ha più carte in mano e interrompo il turno del giocatore due perchè in quel caso avrà vinto.

            return;
        }

        cartaGiocata = giocatore2.giocaCartaDallaMano(cartaATerra);
        if (cartaGiocata==null) {
            giocatore2.mettiCartaInMano(mazzo.togliPrimaCartaDalMazzo());
            System.out.println("Il giocatore 2 non aveva carte adatte in mano ed ha pescato dal mazzo");
        } else {
            cartaATerra = cartaGiocata;
            System.out.println("Il giocatore due ha giocato: " + cartaATerra.numero + " " + cartaATerra.colore);
        }

        if (giocatore2.carteInMano.size()==1) {
            System.out.println("Il giocatore due ha detto: 'UNO!'");
        }



    }


    public void giocaPartita(){
        setPartita(); //Richiamo il metodo set partita
        System.out.println("-------------- INIZIO PARTITA --------------");
        System.out.println();
        System.out.println("Abbiamo dato le carte ai giocatori");
        System.out.println();
        int numeroTurni = 1; //contatore turni
        while (giocatore1.carteInMano.size() > 0 && giocatore2.carteInMano.size() >0){ //Con questo ciclo analizzo la condizione in cui entrambi i giocatori devono avere carte in mano ed in quel caso inizio il turno.
            System.out.println("Turno: " + numeroTurni++); //Incremento man mano che passano i turni il contatore.
            turno();
            System.out.println();
            System.out.println("-------------------------");

        }
        //arrivo all'if solamente se uno dei due giocatori non ha carte in mano
        if (giocatore1.carteInMano.isEmpty()) { //Con l'if controllo chi dei due giocatori non  ha più carte in mano ed in quel caso vincerà la partita.
            System.out.println("               IL GIOCATORE 1 HA VINTO!!");
        }
        else System.out.println("              IL GIOCATORE 2 HA VINTO!!");

        System.out.println();

        System.out.println("------------- FINE PARTITA --------------------");


        }



    }





