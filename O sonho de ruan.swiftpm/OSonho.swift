import SwiftUI
import SpriteKit


struct OSonho: View {
    @State private var irTelacheia = false
    @State private var isAnimation = false
    
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
                    .position(x: isAnimation ? -300 : 1100 , y: 550)
                
                ScrollView{
                    Text("O Ruan pequeno virou grande e entrou na faculdade e foi justo em uma semana de prova que surgiu UMA LIGAÇÃO de um amigo o chamando pra jogar na Arena da Amazonia,o jogo era no outro dia, Ruan teve que superar seus limites e estudar todo o conteúdo de sua prova antes do jogo, chegando la não foi apenas recompensado pelo belo campo da arena mas conseguiu deixar sua marca em um lindo gol de fora da área ⚽️  ")
                        .multilineTextAlignment(.center)
                        .position(x: 400, y: 260)
                        .foregroundColor(.white)
                        .font(.system(size: 28))
                    Button("Fim"){
                        self.irTelacheia.toggle()
                    }
                    .position(x: 400, y: 210)
                    .buttonStyle(botaoverde())
                    .foregroundColor(Color("verdearena"))
                    .fullScreenCover(isPresented: $irTelacheia, content: comeco.init)
                }
            
            }.onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now()+0.2){
                    withAnimation(.default.speed(0.02)){
                        isAnimation.toggle()
                    }
                }
            }
            
            
        }
    }
}

