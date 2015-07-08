package guild_manager;

import java.util.ArrayList;

public class Personagem {
    public static ArrayList<Personagem> pers;
    
    private String personagem;
    private String jogador;
    private String raca;
    private String classe;
    private int level;
    private Profissao profissao;
    private String especialidade;
    private ArrayList<String> dias;
    private String horario;
    
    public Personagem(String personagem, String jogador, String raca, String classe, int level, String profissao, int lvlProfissao, String especialidade, ArrayList dias, String horario){
        this.personagem = personagem;
        this.jogador = jogador;
        this.raca = raca;
        this.classe = classe;
        this.level = level;
        this.profissao = new Profissao(profissao, lvlProfissao);
        this.especialidade = especialidade;
        this.dias = dias;
        this.horario = horario;
    }
    public Personagem(String personagem){
        this.personagem = personagem;
    }
    
    public String getPersonagem(){
        return this.personagem;
    }
    
    public String getJogador(){
        return this.jogador;
    }
    
    public String getRaca(){
        return this.raca;
    }
    
    public String getClasse(){
        return this.classe;
    }
    
    public int getLevel(){
        return this.level;
    }
    
    public Profissao getProfissao(){
        return this.profissao;
    }
    
    public String getEspecialidade(){
        return this.especialidade;
    }
    
    public ArrayList<String> getDias(){
        return this.dias;
    }
    
    public String getHorario(){
        return this.horario;
    }
}
