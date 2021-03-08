package ProgettocarteUnoMigliorato;
import java.util.Scanner;

public class UnoTest {
    public static void main(String[] args){
//inserisco menu e varie casistiche di risposta
        System.out.println("Vuoi iniziare la partita: ? Si/No/Info");

        Scanner input = new Scanner(System.in);
        String risposta = input.next();
        switch (risposta) {
            case "Si":
                iniziaPartita(input);
                break;

            case "No":
                System.out.println("Peccato!");
                break;

            case "Info":
                System.out.println();
                System.out.println("Descrizione del gioco: ");
                System.out.println();
                System.out.println("UNO è il gioco di carte più amato del mondo... è facile giocare, ma è praticamente impossibile smettere! \n" +
                        "A turno, i giocatori abbinano per colore o numero una carta a quella scoperta in cima al mazzo di scarto. \n" +
                        "Le carte Jolly rendono il gioco più emozionante e ti aiutano a sconfiggere i tuoi avversari. \n" +
                        "Le carte Jolly includono le carte Cambia Colore, Salta Giro, Cambia Giro, +2, e +4. \n" +
                        "Il mazzo da 122 carte include 80 carte per ogni colore (rosso, verde, blu e giallo), 3 carte Cambia Colore, 3 carte personalizzabili e 3 carta Regola Speciale. \n" +
                        "Se non avete una carta da abbinare, pescatene una dal mazzo centrale! Quando rimanete con una sola carta in mano, non dimenticate di gridare UNO! \n" +
                        "Il primo giocatore a scartare tutte le carte della propria mano prima degli avversari vince! Divertimento senza fine! ");
                System.out.println();
                System.out.println("Adesso che hai letto la descizione vuoi avviare la partita? Si/No");
                risposta = input.next();
                if (risposta.equals("Si")){
                    iniziaPartita(input);

                }
                else if (risposta.equals("No")) {
                    System.out.println("Peccato!");
                }
                else System.out.println("Risposta non riconosciuta");

                break;

            default:
                System.out.println("Risposta non risconosciuta");


        }



    }
//metodo per non ripetere istruzioni che richiama gioca partita e fa iniziare la partita
    private static void iniziaPartita(Scanner input) {
        Partita partita1 = new Partita();
        System.out.println("Quanti giocatori giocheranno questa partita? ");
        partita1.giocatoriPartita = input.nextInt();
        partita1.giocaPartita();
        System.out.println();
        System.out.println("Vuoi giocare ancora? Si/No");
        String risposta = input.next();

        switch (risposta){
            case "Si":
                iniziaPartita(input);
                break;
            case "No":
                System.out.println("Alla prossima!");
                break;

        }

    }
}









