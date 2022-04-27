import SwiftUI
import SpriteKit
struct cena2: View {
    
    @State private var irTelacheia = false
    
    var scene: SKScene {
        let scene = ruanCorrendosemback()
        scene.size = CGSize(width: 100,height: 100)
        return scene
    }
    
    var body: some View {
        
        ZStack{
       
            Image("campinho")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                
                Button("começar"){
                    self.irTelacheia.toggle()
                }
                .position(x: 400, y: 950)
                .buttonStyle(botaoverde())
                .fullScreenCover(isPresented: $irTelacheia, content: cena1.init)
                
            }
            
            SpriteView(scene: self.scene,options: [.allowsTransparency])
                .frame(width: 400, height: 400)
                .position(x: 380, y: 650)
            
        }
        
    }
    
    
    
}

