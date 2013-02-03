
package model;

/**
 *
 * @author Jenni Burgmeier
 */
public class Circle {
    private double radius;
    private final double pi = 3.14159265359;
    private double area;

    public Circle() {
    }

    public final double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }
    
    public void calculateArea(){
        area = pi * (radius * radius);
    }

    public final double getArea() {
        return area;
    }
    
    
    
}
