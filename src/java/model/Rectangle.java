
package model;

/**
 *
 * @author Jenni Burgmeier
 */
public class Rectangle {
    private double legA;
    private double legB;
    private double area;

    public Rectangle(){
        
    }
    public Rectangle(double legA, double legB) {
        this.legA = legA;
        this.legB = legB;
    }

    public final double getLegA() {
        return legA;
    }

    public void setLegA(double legA) {
        this.legA = legA;
    }

    public final double getLegB() {
        return legB;
    }

    public void setLegB(double legB) {
        this.legB = legB;
    }
    
    public final void calculateArea(){
        area = legA * legB;
    }

    public final double getArea() {
        return area;
    }
    
}
