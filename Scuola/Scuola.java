package Scuola;

import java.util.ArrayList;

public class Scuola {
    ArrayList<Studente> elencoStudenti = new ArrayList();
    ArrayList<Docente> elencoDocenti = new ArrayList();

    public static void main(String[] args) {
        Scuola miaScuola = new Scuola();
        System.out.println("STO INSERENDO NEGLI ELENCHI STUDENTI E DOCENTI...");
        System.out.println();
        Studente studente1 = new Studente("Giovanni", "Composto", 2005);
        Studente studente2 = new Studente("Simone", "Giunta", 2000);
        Studente studente3 = new Studente("Carlo", "Ricchiuti", 2002);
        Studente studente4 = new Studente("Kevin", "Farella", 2006);

        miaScuola.elencoStudenti.add(studente1);
        miaScuola.elencoStudenti.add(studente2);
        miaScuola.elencoStudenti.add(studente3);
        miaScuola.elencoStudenti.add(studente4);



        Docente docente1 = new Docente("Gaspare", "Pero", 1700);
        Docente docente2 = new Docente("Antonio", "Boezio", 1980);
        Docente docente3 = new Docente("Vera", "Polese", 1500);
        Docente docente4 = new Docente("Roberta", "Manfredi", 2008);

        miaScuola.elencoDocenti.add(docente1);
        miaScuola.elencoDocenti.add(docente2);
        miaScuola.elencoDocenti.add(docente3);
        miaScuola.elencoDocenti.add(docente4);

        System.out.println();
        miaScuola.stampaElencoStudenti(miaScuola.elencoStudenti);
        System.out.println();
        miaScuola.stampaElencoDocenti(miaScuola.elencoDocenti);

    }

    public static void stampaElencoStudenti(ArrayList<Studente> studente){
        System.out.println("---------------------------------------------------");
        System.out.println();
        System.out.println("Elenco studenti: ");
        System.out.println();
        for(int i=0; i < studente.size(); i++){
            if(!studente.get(i).getNome().equals(""))
                System.out.println("Nome: " + studente.get(i).getNome() + ", Cognome: " + studente.get(i).getCognome() + ", Anno di Nascita: " + studente.get(i).getAnnoDiNascita() + ", Matricola: " + studente.get(i).getMatricola() + ", Classe frequentata: " + studente.get(i).getClassefrequentata());
        }




    }
    public static void stampaElencoDocenti(ArrayList<Docente> docente){
        System.out.println("---------------------------------------------------");
        System.out.println();
        System.out.println("Elenco docenti:");
        System.out.println();
        for(int i = 0; i < docente.size(); i++) {
            if(!docente.get(i).getNome().equals("")) {
                System.out.println("Nome e cognome: " + docente.get(i).getNome() + docente.get(i).getCognome() + "\n" + "Anno di Nascita: " + docente.get(i).getAnnoDiNascita());
                System.out.println("----------------");
            }


        }
    }

    }

