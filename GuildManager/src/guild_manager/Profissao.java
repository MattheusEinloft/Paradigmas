package guild_manager;

class Profissao {
    private String profissao;
    private int level;
    
    public Profissao(String profissao, int level){
        this.profissao = profissao;
        this.level = level;
    }
    
    public String getProfissao(){
        return this.profissao;
    }
    
    public int getLvlProfissao(){
        return this.level;
    }
}
