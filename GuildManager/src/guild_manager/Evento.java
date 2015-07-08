package guild_manager;

import java.util.ArrayList;

public class Evento {
    public static ArrayList<Evento> event;
    
    private ArrayList<Personagem> grupo;
    private String dia;
    private String horario;
    private int quantMembros;

    public Evento(ArrayList<Personagem> grupo, String dia, String horario, int quantMembros) {
        this.grupo = grupo;
        this.dia = dia;
        this.horario = horario;
        this.quantMembros = quantMembros;
    }

    public ArrayList<Personagem> getGrupo(){
        return this.grupo;
    }
    
    public String getDia() {
        return dia;
    }

    public String getHorario() {
        return horario;
    }

    public int getQuantMembros() {
        return quantMembros;
    }
}
