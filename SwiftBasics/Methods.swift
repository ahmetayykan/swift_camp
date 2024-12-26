import Foundation

// MARK: - Rectangle Struct
struct Rectangle {
    var width: Double
    var height: Double

    // Instance Method: Calculates the area of the rectangle
    func calculateArea() -> Double {
        return width * height
    }

    // Instance Method: Calculates the perimeter of the rectangle
    func calculatePerimeter() -> Double {
        return 2 * (width + height)
    }

    // Mutating Method: Scales the rectangle dimensions
    mutating func scale(by factor: Double) {
        width *= factor
        height *= factor
    }

    // Type Method: Description about Rectangle
    static func describeShape() {
        print("A rectangle has four sides with opposite sides being equal.")
    }
}

// MARK: - Circle Class
class Circle {
    var radius: Double

    init(radius: Double) {
        self.radius = radius
    }

    // Instance Method: Calculates the area of the circle
    func calculateArea() -> Double {
        return Double.pi * radius * radius
    }

    // Instance Method: Calculates the circumference of the circle
    func calculateCircumference() -> Double {
        return 2 * Double.pi * radius
    }

    // Type Method: Description about Circle
    class func describeShape() {
        print("A circle is a round shape where every point on its edge is equidistant from the center.")
    }
}

// MARK: - Examples of Using Methods

// Using Rectangle
var myRectangle = Rectangle(width: 5.0, height: 10.0)
print("Rectangle Area: \(myRectangle.calculateArea())") // Output: 50.0
print("Rectangle Perimeter: \(myRectangle.calculatePerimeter())") // Output: 30.0

myRectangle.scale(by: 2.0)
print("Scaled Rectangle Area: \(myRectangle.calculateArea())") // Output: 200.0

Rectangle.describeShape()

// Using Circle
let myCircle = Circle(radius: 7.0)
print("Circle Area: \(myCircle.calculateArea())") // Output: 153.93804002589985
print("Circle Circumference: \(myCircle.calculateCircumference())") // Output: 43.982297150257104

Circle.describeShape()

// MARK: - Enum with Methods
enum ShapeType {
    case rectangle, circle

    // Instance Method: Describes the shape type
    func describe() {
        switch self {
        case .rectangle:
            print("This is a rectangle.")
        case .circle:
            print("This is a circle.")
        }
    }

    // Type Method: List all shape types
    static func listAllShapes() {
        print("Available shapes: Rectangle, Circle")
    }
}

let shape = ShapeType.rectangle
shape.describe() // Output: This is a rectangle.
ShapeType.listAllShapes()

// MARK: - Mutating Method in Enum
enum ToggleSwitch {
    case on, off

    // Mutating Method: Toggles the switch state
    mutating func toggle() {
        self = (self == .on) ? .off : .on
    }
}

var mySwitch = ToggleSwitch.off
print("Initial Switch State: \(mySwitch)") // Output: off
mySwitch.toggle()
print("After Toggling: \(mySwitch)") // Output: on
