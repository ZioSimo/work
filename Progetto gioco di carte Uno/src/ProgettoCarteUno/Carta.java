package ProgettoCarteUno;

public class Carta {

    //identifico due variabili numero e colore carta

    int numero;
    String colore;

    //Sto creando il metodo "impostacarta" a cui passerò il numero ed il colore della carta
    public void impostaCarta(int numeroCarta, String coloreCarta) {
        numero = numeroCarta;
        colore = coloreCarta;

    }
 //Controlla se due carte sono compatibili; per essere compatibili devono essere dello stesso colore o dello stesso numero.

    public boolean confrontaCarta(Carta altraCarta){
        if (numero==altraCarta.numero || colore==altraCarta.colore) {//controllo se numero e colore  della carta sia idonea quindi compatibile e restituirà un valore vero.

            return true;
        }
        else return false;
        }

    }


