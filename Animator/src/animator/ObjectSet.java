package animator;

import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Point;
import java.awt.image.BufferedImage;
import java.util.Random;

// Conjunto de objetos da animacao.
class ObjectSet {
    
    private Image[] images;
    private Circle[] circles;
    private Rectangle[] rectangles;
    private Oval[] ovals;
    int nShapes;
    String shapeType;
    Random rand = new Random();
    
    // Adiciona objetos da classe Image ao ObjectSet.
    void addImages(int n, Dimension dim, BufferedImage image, String path) {
        System.out.printf("Test: adding %d images\n", n);
        System.out.printf("Test: motion path %s\n", path);
        images = new Image[n];
        for (int i = 0; i < images.length; i++) {
            Point p = new Point(rand.nextInt(dim.width), rand.nextInt(dim.height));
            images[i] = new Image(dim, p, image, path);
        }
    }
    
    // Adiciona objetos da classe Rectangle ao ObjectSet.
    void addRectangles(int n, Dimension dim, String path) {
        System.out.printf("Test: adding %d rectangles\n", n);
        System.out.printf("Test: motion path %s\n", path);
        nShapes = n;
        rectangles = new Rectangle[n];
        shapeType = "rectangle";
        for (int i = 0; i < rectangles.length; i++) {
            Point p = new Point(rand.nextInt(dim.width),rand.nextInt(dim.height));
            rectangles[i] = new Rectangle(dim, p, path);
        }
    }
    
    // Adiciona objetos da classe Circle ao ObjectSet.
    void addCircles(int n, Dimension dim, String path) {
        System.out.printf("Test: adding %d rectangles\n", n);
        System.out.printf("Test: motion path %s\n", path);
        nShapes = n;
        circles = new Circle[n];
        shapeType = "circle";
        for (int i = 0; i < circles.length; i++) {
            Point p = new Point(rand.nextInt(dim.width),rand.nextInt(dim.height));
            circles[i] = new Circle(dim, p, path);
        }
    }
    
    // Adiciona objetos da classe Oval ao ObjectSet.
    void addOvals(int n, Dimension dim, String path) {
        System.out.printf("Test: adding %d rectangles\n", n);
        System.out.printf("Test: motion path %s\n", path);
        nShapes = n;
        ovals = new Oval[n];
        shapeType = "oval";
        for (int i = 0; i < ovals.length; i++) {
            Point p = new Point(rand.nextInt(dim.width),rand.nextInt(dim.height));
            ovals[i] = new Oval(dim, p, path);
        }
    }
    
    // Desenha cada um dos objetos da animacao.
    void drawAll(Graphics g) {
        for(int i = 0; i < images.length; i++){
            images[i].draw(g);
        }
        for (int i = 0; i < nShapes; i++){
            if("circle".equals(shapeType)){
                circles[i].draw(g);
            }
            else if("rectangle".equals(shapeType)){
                rectangles[i].draw(g);
            }
            else if("oval".equals(shapeType)){
                ovals[i].draw(g);
            }
        }
        System.out.println("drawAll");
    }

    // Move cada um dos objetos da animacao.
    void moveAll() {
        for(int i = 0; i < images.length; i++){
            images[i].move();
        }
        for (int i = 0; i < nShapes; i++){
            if("circle".equals(shapeType)){
                circles[i].move();
            }
            else if("rectangle".equals(shapeType)){
                rectangles[i].move();
            }
            else if("oval".equals(shapeType)){
                ovals[i].move();
            }
        }
        System.out.println("moveAll");
    }
}