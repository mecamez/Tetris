import SpriteKit

class GameScene: SKScene {
    var char: Char!

    override func didMove(to view: SKView) {
        backgroundColor = .black

        char = Char()
        char.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(char)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create tap gesture recognizers for each direction
        let upTap = NSClickGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        let downTap = NSClickGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        let leftTap = NSClickGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        let rightTap = NSClickGestureRecognizer(target: self, action: #selector(handleTap(_:)))

        // Set identifiers or tags for direction identification
        upTap.name = "up"
        downTap.name = "down"
        leftTap.name = "left"
        rightTap.name = "right"

        // Add gesture recognizers to respective zones or views
        upZone.addGestureRecognizer(upTap)
        downZone.addGestureRecognizer(downTap)
        leftZone.addGestureRecognizer(leftTap)
        rightZone.addGestureRecognizer(rightTap)
    }
    
    @obje func handleTap(_ sender: NSClickGestureRecognizer) {
        guard let direction = sender.name else { return }

        switch direction {
        case "up":
            char.move(direction: .up)
        case "down":
            char.move(direction: .down)
        case "left":
            char.move(direction: .left)
        case "right":
            char.move(direction: .right)
        default:
            break
        }
    }
}
