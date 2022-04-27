import SwiftUI
import SpriteKit


struct cena1: View {
    
    var scene: SKScene {
        let scene = ruanCorrendosemback()
        scene.size = CGSize(width: 300,height: 300)
        return scene
    }
    
    var body: some View {
        ZStack{
            
            
            
            Spacer()
            
            SpriteView(scene: self.scene)
                .frame(width: 300, height: 300)
            
            Spacer()
            
        }
        
    }
}
