public class LineToPointAdapter {
    private static Integer count = 0;
    public List<Point> points = new List<Point>();

    public LineToPointAdapter(Line line) {
        count++;
        System.debug(
            String.format(
                '{0}: Generating points for line [{1},{2}]-[{3},{4}]', 
                new List<Object>{
                    count,
                    line.lineStart.x,
                    line.lineStart.y,
                    line.lineEnd.x,
                    line.lineEnd.y
                }
            )
        );

        Integer left = Math.min(line.lineStart.x, line.lineEnd.x);
        Integer right = Math.Max(line.lineStart.x, line.lineEnd.x);
        Integer top = Math.min(line.lineStart.y, line.lineEnd.y);
        Integer bottom = Math.Max(line.lineStart.y, line.lineEnd.y);
        Integer dx = right - left;
        Integer dy = line.lineEnd.y - line.lineStart.y;

        if (dx == 0)
        {
            for (Integer y = top; y <= bottom; ++y)
            {
                this.points.add(new Point(left, y));
            }
        }
        else if (dy == 0)
        {
            for (Integer x = left; x <= right; ++x)
            {
                this.points.add(new Point(x, top));
            }
        }
    }
}