import SwiftUI
import SpriteKit


struct Aquadra: View {
    @State private var irTelacheia = false

    var scene: SKScene {
        let scene = ruanCorrendosemback()
        scene.size = CGSize(width: 400,height: 400)
        return scene
    }
    
    var body: some View {
        
        ZStack{
            Color("verdearena")
                .ignoresSafeArea()
            HStack{
            Image("campoarena")
            .resizable()
            .aspectRatio(contentMode: .fit)
            
            
            }
            .position(x: 400, y: 300)
            
            VStack{
                SpriteView(scene: self.scene,options: [.allowsTransparency])
                    .frame(width: 650, height: 650)
                    .position(x: 400, y: 550)
                
                ScrollView{
                    Text("Desde criança nosso amigo Ruan tem uma paixão pelo esporte mais famoso do mundo: O FUTEBOL⚽️ ,aos dez anos seu irmão o apresentou a esse mundo e desde la ele tem jogado (quase) todos os dias com seu amigos em uma quadra no prédio onde mora.")
                        .multilineTextAlignment(.center)
                        .position(x: 400, y: 220)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                    Button("começar"){
                        self.irTelacheia.toggle()
                    }
                    .position(x: 400, y: 230)
                    .buttonStyle(botaoverde())
                    .fullScreenCover(isPresented: $irTelacheia, content: cena1.init)
                }
               
                
            }
            
            
        }
    }
}

