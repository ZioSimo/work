package Scuola;


public class Studente extends Anagrafica {

    private long matricola;
    private String classefrequentata;

    public Studente(String nome, String cognome, int annoDiNascita){
        super(nome, cognome, annoDiNascita);
        matricola = (long)(Math.random() * 1000000 + 1);
        setCalcolaClassefrequentata();

    }

    public String getClassefrequentata() {
        return classefrequentata;
    }

    public void setCalcolaClassefrequentata() {
        int eta = 2021 - getAnnoDiNascita();
        switch (eta){
            case 14:
                classefrequentata="1^classe";
                break;
            case 15:
                classefrequentata="2^classe";
                break;
            case 16:
                classefrequentata="3^classe";
                break;
            case 17:
                classefrequentata="4^classe";
                break;
            case 18:
                classefrequentata="5^classe";
                break;
            default:

                classefrequentata="n/a";
                break;


        }



    }

    public long getMatricola() {
        return matricola;
    }




}
