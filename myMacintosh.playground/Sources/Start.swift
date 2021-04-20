// Jai Shree Shyam
// Jai Santoshi Maa


import SwiftUI
import PlaygroundSupport
import AVFoundation

public struct Start: View {
    public init() {}
        
    @State var player:AVAudioPlayer!
    
    @State var isPlaying : Bool = false
    
    @State var turnedOn:Bool = false
    
    @State var turned = "off"

    public var body: some View {
        
        VStack {
            Text("Macinstosh turned \(turned)")
                .font(.custom("ChicagoFLF", size: 16))
            
            HStack {
                if turnedOn {
                    Image(nsImage: #imageLiteral(resourceName: "off.png"))
                } else {
                    Image(nsImage: #imageLiteral(resourceName: "on.png"))
                        .onTapGesture {
                            self.playSound()
                            self.turnedOn = true
                            self.turned = "on"
                        }
                }
                VStack {
                Image(nsImage:#imageLiteral(resourceName: "arrow.png"))
                    .colorInvert()
                    Text("turn on")
                        .font(.custom("ChicagoFLF", size: 12))
                }
            }
            
         
                  
//            Button("Turn on") {
//                self.playSound()
//                self.power.toggle()
//            }
            
        }
        
        .frame(width: 512, height: 342)
        .background(Color.black)
        .cornerRadius(8)
        
    }
    
    private func playSound() -> Void {
        let url = Bundle.main.url(forResource: "start-up", withExtension: "mp3")
        
        guard url != nil else {
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                PlaygroundPage.current.setLiveView(SystemDisk())
            }
        } catch {
            print("\(error)")
        }
        
    }
}
