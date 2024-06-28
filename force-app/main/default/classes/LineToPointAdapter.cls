public class LineToPointAdapter {
    private static Integer count = 0;
    private static Map<Integer, List<Point>> cache = new Map<Integer,List<Point>>();
    private Line line;

    public LineToPointAdapter(Line line) {
        this.line = line;
        Integer hash = line.getHashCode();
        if(cache.containsKey(hash)) return;

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

        List<Point> points = new List<Point>();

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
                points.add(new Point(left, y));
            }
        }
        else if (dy == 0)
        {
            for (Integer x = left; x <= right; ++x)
            {
                points.add(new Point(x, top));
            }
        }

        cache.put(hash, points);
    }

    public List<Point> getPoints()
    {
        return cache.get(this.line.getHashCode());
    }
}