import SwiftUI

public struct SpecialHover: View {
public init() {}
    
   public var body: some View {
    
        VStack {
            HStack {
                    Text("Clean up")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                    Spacer()
            }
            .padding(.leading, 15.7)
            HStack {
                    Text("Empty Trash")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                    Spacer()
            }
            .padding(.leading, 15.7)
            HStack {
                    Text("Erase Disk")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                    Spacer()
            }
            .padding(.leading, 15.7)
            HStack {
                    Text("Set Startup")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                    Spacer()
            }
            .padding(.leading, 15.7)

        }
            .frame(width: 115, height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .border(Color.black, width: 1.2)
            .background(Color.white)
            .position(x: 233, y: 24)
            .blur(radius: 0.3)
    }
}
