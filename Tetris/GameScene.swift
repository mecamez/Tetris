import SpriteKit

class GameScene: SKScene {
    var char: Char!

    override func didMove(to view: SKView) {
        backgroundColor = .black

        char = Char()
        char.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(char)
    }

    override func keyDown(with event: NSEvent) {
        switch event.charsIgnoringModifiers {
        case "w":
            char.move(direction: .up)
        case "s":
            char.move(direction: .down)
        case "a":
            char.move(direction: .left)
        case "d":
            char.move(direction: .right)
        default:
            break
        }
    }
}
