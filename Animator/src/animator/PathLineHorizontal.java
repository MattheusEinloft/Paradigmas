package animator;

import java.awt.Dimension;
import java.awt.Point;

public class PathLineHorizontal {
    Dimension dim;
    Point pos;
    
    public PathLineHorizontal(Dimension dim, Point pos){
        this.dim = dim;
        this.pos = pos;
    }
    
    public void move(){
        pos.y += 5;
        if(pos.y > dim.height){
            pos.y = 0;
        }
    }
}
