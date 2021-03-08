package ProgettocarteUnoMigliorato;

import java.util.ArrayList;
import java.util.Collections;

public class Partita {
//Creo gli oggetti ed inizializzo le variabili
    public int giocatoriPartita; //una variabile che mi indica il numero dei giocatori
    public ArrayList<Giocatore> giocatori = new ArrayList<>();
    public Mazzo mazzo;
    public Carta cartaATerra;
    public int posizioneGiocatoreDiTurno = 0;//creo una variabile che mi indica la posizione del giocatore all'interno dell'array giocatori
    public boolean cartaSpeciale = false; //Una variabile che mi indica che nel turno precedente è stata giocata una carta speciale


//Creo tot giocatori in base al valore numerico inserito da riga di comando.
    public void setPartita(){

        for(int i=0; i< giocatoriPartita; i++){
            giocatori.add(new Giocatore());
            giocatori.get(i).nome = "Giocatore " + (i+1); //prendo l'indice del ciclo for aggiungendoli la stringa giocatore
        }


        mazzo = new Mazzo();

        mazzo.setMazzo();

 /* Do le carte ai giocatori con un ciclo for. Ho richiamato i due metodi "togliPrimaCartaDalMazzo" e "mettiCartaInMano" perché
con la prima funzione prendo la prima carta dal mazzo, mentre con la seconda passiamo la carta mettendola in mano al giocatore;
le uso tutte e due insieme per far si che la prima carta presa dal mazzo finisca in mano al giocatore. */

        for (int i=0; i < 7; i++) {
            for (Giocatore giocatore : giocatori) {
                giocatore.mettiCartaInMano(mazzo.togliPrimaCartaDalMazzo()); //pesco una carta dal mazzo e la do in mano ad un giocatore
            }
        }


        cartaATerra = mazzo.togliPrimaCartaDalMazzo(); // prende la prima carta del mazzo e la mette a terrà.


    }
//Nel metodo turno inserisco tutte le operazioni per giocare il turno di un singolo giocatore.

    public void turno(Giocatore giocatore) {
        System.out.println("La carta in gioco è: " + cartaATerra.valore + " " + cartaATerra.colore);
        if (cartaSpeciale) { //controllo se è stata giocata una carta speciale nel turno precedente.
            cartaSpeciale = false; //la carta speciale è stata appena usata e non è più valida per i turni successivi (se non si mette a false i giocatori continuano a subire l'effetto)

            //Con questi if controllo quale è la carta speciale a terra.

            if (cartaATerra.valore.equals("+4")) {
                System.out.println(giocatore.nome + " pesca 4 carte");
                for (int i = 0; i < 4; i++) {
                    giocatore.mettiCartaInMano(mazzo.togliPrimaCartaDalMazzo());
                }
                return; //finisce il metodo turno
            }

            if (cartaATerra.valore.equals("+2")) {
                System.out.println(giocatore.nome + " pesca 2 carte");
                for (int i = 0; i < 2; i++) {
                    giocatore.mettiCartaInMano(mazzo.togliPrimaCartaDalMazzo());
                }
                return; //finisce il metodo turno
            }

            if (cartaATerra.valore.equals("STOP")) {
                System.out.println(giocatore.nome + " non può giocare questo turno ");
                return; //finisce il metodo turno
            }
        }


/* IL giocatore gioca la carta guardando la carta a terra e la carta che gioca finisce in carta giocata se non ha carte da giocare,
 carta giocata diventan null. */

        Carta cartaGiocata = giocatore.giocaCartaDallaMano(cartaATerra);

        if (cartaGiocata==null) {//se la condizione è vera quindi se il giocatore non ha carte in mano pesca la carta dal mazzo.
            giocatore.mettiCartaInMano(mazzo.togliPrimaCartaDalMazzo()); //il giocatore pesca la carta
            System.out.println(giocatore.nome + " non aveva carte adatte in mano ed ha pescato dal mazzo");
        } else {
            cartaATerra = cartaGiocata; //gioca la carta che ha in mano perchè idonea e viene messa a terra.
            System.out.println(giocatore.nome + " ha giocato: " + cartaATerra.valore + " " + cartaATerra.colore);

            // In base al tipo di carta giocata possono esserci degli effetti speciali

            switch (cartaGiocata.valore) {
                case "+4":
                cartaSpeciale= true; //Si è giocata una carta speciale che si attiverà nel prossimo turno.
                case "CAMBIA COLORE":
                    cartaGiocata.colore = giocatore.scegliColoredaGiocare(); //Applico il colore che conviene al giocatore alla carta giocata.
                    System.out.println(giocatore.nome + " ha scelto il colore " + cartaGiocata.colore);
                break;
                case "CAMBIO GIRO":
                    Collections.reverse(giocatori); //metodo per scambiare l'ordine dei giocatori (il primo diventa quarto e così via)
                    posizioneGiocatoreDiTurno = giocatori.indexOf(giocatore); //aggiorniamo la posizione del giocatore di turno perchè abbiamo cambiato l'ordine dei giocatori nell'array
                    break;
                case "+2":
                case "STOP": cartaSpeciale=true;
                break;

            }
        }



        if (giocatore.carteInMano.size()==1){  //Verifico se  l'array list carteInMano ha una sola carta e nel caso stampo il messaggio "UNO".
            System.out.println(giocatore.nome + " ha detto: 'UNO!'");
        }

        if (giocatore.carteInMano.isEmpty()) { //Controllo se il giocatore non ha più carte in mano e interrompo il turno degli altri giocatori.

            return;
        }
    }


    public void giocaPartita(){
        setPartita(); //richiamo il metodo set partita
        System.out.println("-------------- INIZIO PARTITA --------------");
        System.out.println();
        System.out.println("Abbiamo dato le carte ai giocatori");
        System.out.println();
        Collections.shuffle(giocatori); //randomizzo l'ordine di inizio dei giocatori
        Giocatore giocatoreDiTurno = giocatori.get(0); //Prendo il primo giocatore dell'array ed inizio il gioco da lui
        int numeroTurni = 1; //contatore turni
        while (giocatoreDiTurno.carteInMano.size() > 0) { //Con questo ciclo analizzo la condizione in cui i giocatori devono avere carte in mano ed inizio il turno
            System.out.println("Turno: " + numeroTurni++); //incremento mano mano che passano i turni il contatore
            turno(giocatoreDiTurno);
            if(giocatoreDiTurno.carteInMano.isEmpty()){ //Se il giocatore di turno non ha carte in mano esce dal ciclo e va alla dichiarazione di vittoria.
                break;
            }
            System.out.println("-------------------------");

            //voglio trovare il giocatore che giocherà il prossimo turno

            posizioneGiocatoreDiTurno++; //incremento la posizione del giocatore di turno

            if (posizioneGiocatoreDiTurno>=giocatori.size()){ //confronto se l'indice del giocatore supera la dimensione dell'array giocatori
                posizioneGiocatoreDiTurno=0; //riporto a 0 la posizione in modo che il giocatore successivo sarà quello in posizione 1 dell'array giocatori
            }
            giocatoreDiTurno=giocatori.get(posizioneGiocatoreDiTurno); //aggiorno il giocatore di turno prendendolo dall'array nella posizione specifica

        }

        System.out.println("-------------------------------------");
        System.out.println();

        System.out.println(giocatoreDiTurno.nome + " HA VINTO!");





        System.out.println();

        System.out.println("------------- FINE PARTITA --------------------");


        }



    }





