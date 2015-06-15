package animator;

import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Point;
import java.awt.image.BufferedImage;

// Uma imagem na animacao.
class Image {

    BufferedImage img;
    Dimension dim;
    Point pos;
    private final String path;
    PathLineHorizontal pathLineHorizontal;
    PathLineVertical pathLineVertical;
    PathZigZag pathZigZag;

    public Image(Dimension dim, Point pos, BufferedImage img, String path) {
        this.dim = dim;
        this.pos = pos;
        this.img = img;
        this.path = path;
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
        g.drawImage(img, (int) pos.getX(), (int) pos.getY(), null);
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
