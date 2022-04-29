import SwiftUI
import SpriteKit


struct aConstrucao: View {
    @State private var irTelacheia = false

    var scene: SKScene {
        let scene = ruanCorrendosemback()
        scene.size = CGSize(width: 400,height: 400)
        return scene
    }
    
    var body: some View {
        
        ZStack{
            Color("CorConstrucao")
                .ignoresSafeArea()
            HStack{
            Image("construcaofix")
            .resizable()
            .aspectRatio(contentMode: .fit)
            
            
            }
            .position(x: 400, y: 380)
            
            VStack{
                SpriteView(scene: self.scene,options: [.allowsTransparency])
                    .frame(width: 650, height: 650)
                    .position(x: 400, y: 550)
                
                ScrollView{
                    Text("O ano era 2013 e pra surpresa de todos do bairro flores uma construção nova começou no antigo estádio Vivaldo lima, era a Arena da Amazônia!sendo construída pra copa de 2014(🇩🇪).Desde la o nosso amigo Ruan tem olhado essa construção e imaginado se um dia trocaria sua quadra pela grama da arena.")
                        .multilineTextAlignment(.center)
                        .position(x: 400, y: 260)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                    Button("O Sonho"){
                        self.irTelacheia.toggle()
                    }
                    .position(x: 400, y: 230)
                    .buttonStyle(botaoverde())
                    .foregroundColor(Color("CorConstrucao"))
                    .fullScreenCover(isPresented: $irTelacheia, content: OSonho.init)
                }
               
                
            }
            
            
        }
    }
}

