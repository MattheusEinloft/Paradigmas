package animator;

import java.awt.Dimension;
import java.awt.Point;

public class PathZigZag {
    Dimension dim;
    Point pos;
    int posInicio;
    int aux = 5;
    
    public PathZigZag(Dimension dim, Point pos){
        this.dim = dim;
        this.pos = pos;
        this.posInicio = pos.y;
    }
    
    public void move(){
        pos.x += 5;
        if(pos.x > dim.width){
            pos.x = 0;
        }
        pos.y += aux;
        if(pos.y > posInicio + 50 || pos.y < posInicio - 50){
            aux -= (2 * aux);
        }
    }
}