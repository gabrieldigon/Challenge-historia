import SpriteKit

class ruanCorrendosemback: SKScene {
    
    public override func sceneDidLoad() {
            self.anchorPoint = .init(x: 0.5, y: 0.5)
            self.scaleMode = .aspectFit
        self.backgroundColor = .clear
        self.view?.allowsTransparency = true
        
        }
    
     override func didMove(to view: SKView) {
            let eleuterio = SKSpriteNode(imageNamed: "pernadireitasemback")
            eleuterio.setScale(0.2)
            eleuterio.run(.repeatForever(.animate(with: [
                SKTexture(imageNamed: "pernadireitasemback"),
                SKTexture(imageNamed: "pernaesquerdasembackground")
            ], timePerFrame: 0.4)))
            addChild(eleuterio)
            
        }
}
