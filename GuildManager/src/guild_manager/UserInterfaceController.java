package guild_manager;

import java.util.ArrayList;

public class UserInterfaceController {
    private UserInterface guild;
    
    public UserInterfaceController(UserInterface guild){
        this.guild = guild;
    }
    
    public void dadosPersonagem(){
        String jog = guild.getTextFieldJogador();
        String pers = guild.getTextFieldPersonagem();
        String raca = (String) guild.getComboBoxRaca().getSelectedItem();
        String clas = (String) guild.getComboBoxClasse().getSelectedItem();
        int lvl = (int) guild.getSpinnerLevel().getValue();
        String prof = (String) guild.getComboBoxProfissao().getSelectedItem();
        int lvlProfissao = (int) guild.getSpinnerLvlProfissao().getValue();
        String espe = (String) guild.getComboBoxEspecialidade().getSelectedItem();
        ArrayList<String> dias = addDias();
        String hora = guild.getTextFieldHorario();
    }
    
    public void criarGrupo(){
        int total = Integer.valueOf((String) guild.getQuantPersonagem().getSelectedItem());
        int quantTank = (int) guild.getSpinnerQuantTank().getValue();
        int quantHealer = (int) guild.getSpinnerQuantHealer().getValue();
        int quantRdps = (int) guild.getSpinnerQuantRdps().getValue();
        int quantMdps = (int) guild.getSpinnerQuantMdps().getValue();
        int soma = quantTank + quantHealer + quantRdps + quantMdps;
    }
    
    private ArrayList<String> addDias(){
        ArrayList <String> dias = new ArrayList<>();
        
        if (guild.getCheckBoxDomingo().isSelected()){         // se domingo foi marcado
            dias.add("Domingo");
        }
        if (guild.getCheckBoxSegunda().isSelected()){         // se segunda foi marcado
            dias.add("Segunda");
        }
        if (guild.getCheckBoxTerca().isSelected()){         // se terca foi marcado
            dias.add("Terca");
        }
        if (guild.getCheckBoxQuarta().isSelected()){         // se quarta foi marcado
            dias.add("Quarta");
        }
        if (guild.getCheckBoxQuinta().isSelected()){         // se quinta foi marcado
            dias.add("Quinta");
        }
        if (guild.getCheckBoxSexta().isSelected()){         // se sexta foi marcado
            dias.add("Sexta");
        }
        if (guild.getCheckBoxSabado().isSelected()){         // se sabado foi marcado
            dias.add("Sabado");
        }
        return dias;
    }
}
