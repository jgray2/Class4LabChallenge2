
package model;

/**
 *
 * @author Jenni Burgmeier
 */
public class Triangle {
    private double legA;
    private double legB;
    private double legC;

    public Triangle() {
    }

    public double getLegA() {
        return legA;
    }

    public void setLegA(double legA) {
        this.legA = legA;
    }

    public double getLegB() {
        return legB;
    }

    public void setLegB(double legB) {
        this.legB = legB;
    }
    
    public final void calculateLegC(){
        legC = Math.sqrt((legA * legA)*(legB * legB));
    }

    public final double getLegC() {
        return legC;
    }
    
}
