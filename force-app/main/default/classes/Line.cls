public class Line {
    public Point lineStart;
    public Point lineEnd;
    
    public Line(Point lineStart, Point lineEnd) {
        this.lineStart = lineStart;
        this.lineEnd = lineEnd;
    }

    public Integer getHashCode()
    {
        return ((this.lineStart != null ? this.lineStart.getHashCode() : 0) * 397) ^ ((this.lineEnd != null ? this.lineEnd.getHashCode() : 0) * 397);
    }
}