public class VectorRectangle extends VectorObject {
    public VectorRectangle(Integer x, Integer y, Integer width, Integer height) {
        this.vector.add(new Line(new Point(x, y), new Point(x + width, y)));
        this.vector.add(new Line(new Point(x + width, y), new Point(x + width, y + height)));
        this.vector.add(new Line(new Point(x, y), new Point(x, y + height)));
        this.vector.add(new Line(new Point(x, y + height), new Point(x + width, y + height)));
    }
}