package teamred.bio.model;


import net.bytebuddy.dynamic.loading.InjectionClassLoader;

import javax.persistence.*;
import java.util.List;

@Entity

public class Categoria {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int IDCategoria;
    @Column
    private String NomeCategoria;

    @OneToMany(mappedBy = "categoria")
    private List<Prodotti> prodotti;


    public int getIDCategoria() {
        return IDCategoria;
    }

    public void setIDCategoria(int IDCategoria) {
        this.IDCategoria = IDCategoria;
    }

    public String getNomeCategoria() {
        return NomeCategoria;
    }

    public void setNomeCategoria(String nomeCategoria) {
        NomeCategoria = nomeCategoria;
    }

}
