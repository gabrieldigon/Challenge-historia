import SwiftUI
import SpriteKit


struct cena1: View {
    
    var scene: SKScene {
        let scene = ruanCorrendosemback()
        scene.size = CGSize(width: 400,height: 400)
        return scene
    }
    
    var body: some View {
        
        SpriteView(scene: self.scene)
        .frame(width: 800, height: 650)
        Spacer()
        VStack{
            ScrollView{
                Text("ola tufo bem")
            }
            
        }
    }
}
