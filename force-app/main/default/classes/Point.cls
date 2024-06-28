public class Point {
    public Integer x;
    public Integer y;
    
    public Point(Integer x, Integer y) {
        this.x = x;
        this.y = y;
    }

    public Integer getHashCode()
    {
        return (this.x * 397) ^ this.y;
    }
}