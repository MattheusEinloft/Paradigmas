package animator;

import java.awt.Dimension;
import java.awt.Point;

public class PathLineVertical {
    Dimension dim;
    Point pos;
    
    public PathLineVertical(Dimension dim, Point pos){
        this.dim = dim;
        this.pos = pos;
    }
    
    public void move(){
        pos.x += 5;
        if(pos.x > dim.width){
            pos.x = 0;
        }
    }
}
