import UIKit
import PlaygroundSupport
import SpriteKit

public class Grandedia: SKScene {
    
    public static func create() {
        var view = SKView(frame: CGRect(origin: .zero, size: CGSize(width: 500, height: 500)))
        var scene = Grandedia(size: view.frame.size)
        view.presentScene(scene)
        PlaygroundPage.current.setLiveView(view)
    }
    
    public override init(size: CGSize) {
        super.init(size: size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func sceneDidLoad() {
        self.anchorPoint = .init(x: 0.5, y: 0.5)
        self.scaleMode = .resizeFill
            //.resizeFill?
    }
    public override func didMove(to view: SKView) {
        let eleuterio = SKSpriteNode(imageNamed: "perna direita background")
        eleuterio.setScale(0.2)
        eleuterio.run(.repeatForever(.animate(with: [
            SKTexture(imageNamed: "perna direita background"),
            SKTexture(imageNamed: "pe esquerdo background")
        ], timePerFrame: 0.4)))
        addChild(eleuterio)
        
    }
}



