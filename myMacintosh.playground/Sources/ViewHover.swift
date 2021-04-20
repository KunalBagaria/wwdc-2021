import SwiftUI

public struct ViewHover: View {
public init() {}
    
   public var body: some View {
    
        VStack {
            HStack {
                    Text("✓by Icon")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                    Spacer()
            }
            .padding(.leading, 6.5)
            HStack {
                    Text("by Name")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                    Spacer()
            }
            .padding(.leading, 15.7)
            HStack {
                    Text("by Date")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                    Spacer()
            }
            .padding(.leading, 15.7)
            HStack {
                    Text("by Size")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                    Spacer()
            }
            .padding(.leading, 15.7)
            HStack {
                    Text("by Kind")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                    Spacer()
            }
            .padding(.leading, 15.7)

        }
            .frame(width: 85, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .border(Color.black, width: 1.2)
            .background(Color.white)
            .position(x: 170, y: 29)
            .blur(radius: 0.3)
    }
}
