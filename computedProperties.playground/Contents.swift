import Foundation

struct Point {
    var x: Float = 0.0
    var y: Float = 0.0
}

struct pointGroup {
    var points: [Point] = []
    
    var centerOfMass: Point {
        get {
            guard !points.isEmpty else { return Point(x: 0, y: 0) }
            
            var xPos: Float = 0
            var yPos: Float = 0
            
            points.map { xPos += $0.x ; yPos = $0.y }
            
//            points.forEach { (point) in
//                xPos += point.x
//                yPos += point.y
//            }
            
            return Point(x: xPos/Float(points.count), y: yPos/Float(points.count))
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
