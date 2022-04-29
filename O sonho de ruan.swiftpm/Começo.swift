import SwiftUI
import SpriteKit
import AVFoundation


struct comeco: View {
    @State var PlayAudio: AVAudioPlayer!
        
        
        func playSounds (_ soundFileName : String) {
            guard let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: nil) else {
                        fatalError("Unable to find \(soundFileName) in bundle")
            }
            do  {
                PlayAudio = try AVAudioPlayer(contentsOf: soundURL)
            } catch {
                print(error.localizedDescription)
            }
            PlayAudio.play()
        }
    
    
    
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
            
        }  .onAppear {
            let sound = Bundle.main.path(forResource: "MUSIQUINHA", ofType: "mp3")
            self.PlayAudio = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.didBecomeActiveNotification), perform: { output in
            self.PlayAudio.play();
        })
        
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.didEnterBackgroundNotification), perform: { output in
            self.PlayAudio.pause();
        })
    }
            
            
        
        

    }
        
   



