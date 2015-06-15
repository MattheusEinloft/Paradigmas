package animator;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Point;
import java.util.Random;

public class Rectangle {
    
    Dimension dim;
    Point pos;
    private final String path;
    PathLineHorizontal pathLineHorizontal;
    PathLineVertical pathLineVertical;
    PathZigZag pathZigZag;
    int width;
    int height;
    Random rand = new Random();
    
    public Rectangle(Dimension dim, Point pos, String path){
        this.dim = dim;
        this.pos = pos;
        this.path = path;
        this.width = 50 + rand.nextInt(200);
        this.height = 50 + rand.nextInt(200);
        pathLineHorizontal = new PathLineHorizontal(dim, pos);
        pathLineVertical = new PathLineVertical(dim, pos);
        pathZigZag = new PathZigZag(dim, pos);
    }
    
    public PathLineHorizontal getPathLineHorizontal(){
        return new PathLineHorizontal(dim, pos);
    }
    
    public PathLineVertical getPathLineVertical(){
        return new PathLineVertical(dim, pos);
    }
    
    public PathZigZag getPathZigZag(){
        return new PathZigZag(dim, pos);
    }

    public Point getPos() {
        return pos;
    }
    
    public void draw(Graphics g) {
        g.setColor(Color.blue);
        g.fillRect(pos.x, pos.y, width, height);
    }
    
    // Move a imagem de acordo segundo a trajetoria selecionada.
    public void move() {
       if("Horizontal".equals(path)){
           pathLineHorizontal.move();
       }
       
       if("Vertical".equals(path)){
           pathLineVertical.move();
       }
       
       if("ZigZag".equals(path)){
           pathZigZag.move();
       }
    }
}