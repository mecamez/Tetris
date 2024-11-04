import SpriteKit

class Character: SKSpriteNode {
    init() {
        let texture = SKTexture(imageNamed: "characterImage")
        super.init(texture: texture, color: .blue, size: GameConstants.characterSize)

        self.name = "character"
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func move(direction: Direction) {
        var moveBy = CGVector(x: 0, y: 0)

            switch direction {
            case .up:
                moveBy = CGVector(x: 0, y: GameConstants.characterSpeed)
            case .down:
                moveBy = CGVector(x: 0, y: -GameConstants.characterSpeed)
            case .left:
                moveBy = CGVector(x: GameConstants.characterSpeed, y: 0)
            case .right:
                moveBy = CGVector(x: GameConstants.characterspeed, y: 0)
            }

            let moveAction = SKAction.move(by: moveBy, duration: 0.1)
            self.run(moveAction)
        }
   }

enum Direction {
    case up, down, left, right
}
