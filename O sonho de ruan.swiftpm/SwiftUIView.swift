import AVFoundation
import Foundation

class Musica {
    
    var music: AVAudioPlayer?
    
    
    func playMusic(sound:String,type:String) {
        if let path = Bundle.main.path(forResource: sound, ofType: type){
            
            do {
                music = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                music?.play()
                
            } catch{
                print("n achamos a musica")
            }
        }
    }
    
}
