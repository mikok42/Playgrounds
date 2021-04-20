import Foundation

struct Point {
    var x: Float = 0.0
    var y: Float = 0.0
    
    static func + (left: Point, right: Point) -> Point {
        return Point(x: left.x + right.x, y: left.y + right.y)
    }
}

struct pointGroup {
    var points: [Point] = []
    
    var centerOfMass: Point {
        get {
            guard !points.isEmpty else { return Point(x: 0, y: 0) }

            return points
                .map{ Point(x: $0.x/Float(points.count), y: $0.y/Float(points.count)) }
                .reduce(Point(x: 0, y: 0), + )
        }
    }
}

var group = pointGroup()

(1...10).forEach { (i) in
    group.points.append(Point(x: Float.random(in: -10...10), y: Float.random(in: -10...10)))
}

print(group.centerOfMass)

group.points.append(Point(x: 1.0, y: 1.0))

print(group.centerOfMass)
