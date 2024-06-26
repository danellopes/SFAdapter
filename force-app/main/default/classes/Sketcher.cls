public class Sketcher {
    public static void DrawPoint(Point p)
    {
        System.debug('.');
    }

    public static void Draw(List<VectorObject> vectorObjects)
    {
        for(VectorObject vo : vectorObjects)
        {
            for(Line line : vo.vector)
            {
                LineToPointAdapter adapter = new LineToPointAdapter(line);
                for(Point point : adapter.points)
                {
                    DrawPoint(point);
                }
            }
        }
    }
}