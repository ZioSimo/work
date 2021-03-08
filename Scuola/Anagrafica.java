package Scuola;

public class Anagrafica {
    private String nome;
    private String cognome;
    private int annoDiNascita;

    public Anagrafica(String nome, String cognome, int annoDiNascita){

        if(controlloAnnoDiNascita(nome, cognome, annoDiNascita)) {
            this.nome = nome;
            this.cognome = cognome;
            this.annoDiNascita = annoDiNascita;
        }
        else {
            this.nome = "";
            this.cognome= "";
            this.annoDiNascita=0;
        }


    }


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }



    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }



    public int getAnnoDiNascita() {
        return annoDiNascita;
    }

    public void setAnnoDiNascita(int annoDiNascita) {
        this.annoDiNascita = annoDiNascita;
    }

    public boolean controlloAnnoDiNascita(String nome, String cognome, int annoDiNascita) {
    if (annoDiNascita > 1900) {

        return true;

    } else System.out.println("Utente " + nome + " " + cognome + " non inserito, anno di nascita non valido");
    return false;


    }




}
