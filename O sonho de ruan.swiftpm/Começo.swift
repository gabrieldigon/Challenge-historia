import SwiftUI
import SpriteKit
struct comeco: View {
    
    @State private var irTelacheia = false
    
    var scene: SKScene {
        let scene = ruanCorrendosemback()
        scene.size = CGSize(width: 400,height: 400)
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
                .foregroundColor(Color("verdecampo"))
                .fullScreenCover(isPresented: $irTelacheia, content: AQuadra.init)
                
            }
            
            SpriteView(scene: self.scene,options: [.allowsTransparency])
                .frame(width: 550, height: 550)
                .position(x: 380, y: 670)
            
        }
        
    }
    
    
    
}

