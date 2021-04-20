import Foundation
import SwiftUI
import PlaygroundSupport
import AVFoundation

struct SystemDisk: View {
    @State var player:AVAudioPlayer!
    @State var inserted:Bool = false
    
    
    var body: some View {
        
        VStack {
            ZStack {
                Image(nsImage: #imageLiteral(resourceName: "background.png"))
                if !inserted {
                    VStack {
                        Image(nsImage:#imageLiteral(resourceName: "Insert.png"))
                        Button("Insert System Disk") {
                            self.inserted.toggle()
                            self.playSound()
                        }
                    }
                } else {
                    Image(nsImage: #imageLiteral(resourceName: "finder-logo.png"))
                }
            }
        }
        .frame(width: 512, height: 342)
        .cornerRadius(8)
        
    }
    
    init() {
        
    }
    
    private func playSound() -> Void {
        let url = Bundle.main.url(forResource: "disk-insertion", withExtension: "mp3")
        
        guard url != nil else {
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                PlaygroundPage.current.setLiveView(Welcome())
            }
        } catch {
            print("\(error)")
        }
        
    }
}
