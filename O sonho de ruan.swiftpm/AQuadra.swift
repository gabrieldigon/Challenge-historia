import SwiftUI
import SpriteKit


struct AQuadra: View {
    @State private var irTelacheia = false
    @State private var isAnimation = false
    
    var scene: SKScene {
        let scene = ruanCorrendosemback()
        scene.size = CGSize(width: 400,height: 400)
        return scene
    }
    
    var body: some View {
        
        ZStack{
            Color("CorQuadra")
                .ignoresSafeArea()
            HStack{
            Image("AQUADRA")
            .resizable()
            .aspectRatio(contentMode: .fit)
            
            
            }
            .position(x: 400, y: 360)
            
            VStack{
                SpriteView(scene: self.scene,options: [.allowsTransparency])
                    .frame(width: 650, height: 650)
                    .position(x: isAnimation ? -300 : 1100 , y: 610)
                
                ScrollView{
                    Text("Desde criança nosso amigo Ruan tem uma paixão pelo esporte mais famoso do mundo: O FUTEBOL⚽️ ,aos dez anos seu irmão o apresentou a esse mundo e desde la ele tem jogado (quase) todos os dias com seu amigos em uma quadra na rua onde mora.")
                        .multilineTextAlignment(.center)
                        .position(x: 400, y: 270)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                    Button("Construção"){
                        self.irTelacheia.toggle()
                    }
                    .position(x: 400, y: 230)
                    .buttonStyle(botaoverde())
                    .foregroundColor(Color("CorQuadra"))
                    .fullScreenCover(isPresented: $irTelacheia, content: aConstrucao.init)
                }
               
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now()+0.2){
                    withAnimation(.default.speed(0.02)){
                        isAnimation.toggle()
                    }
                }
            }
            
            
        }
    }
}
