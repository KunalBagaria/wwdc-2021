import SwiftUI
import PlaygroundSupport
import AVFoundation

struct Welcome: View {
    @State var player:AVAudioPlayer!

    var body: some View {
        Image(nsImage: #imageLiteral(resourceName: "welcome.jpg"))
            .frame(width: 512, height: 342)
            .cornerRadius(8)
        
    }
    init() {
        doStuff()
    }
}

public func doStuff() -> Void {
    DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
        PlaygroundPage.current.setLiveView(ContentView())
    }
}
