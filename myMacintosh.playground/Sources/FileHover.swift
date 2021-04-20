import SwiftUI

public struct FileHover: View {
    public init() {}
    
    public var body: some View {
        VStack {
            
            HStack {
                Text("Open")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                Spacer()
            }
            .padding(.leading, 6.5)

            HStack {
                Text("Duplicate")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                Spacer()
                
                Text("⌘ D")
                    .font(.custom("ChicagoFLF", size: 11))
                    .foregroundColor(.gray)
                
            }
            .padding(.leading, 6.5)
            
            HStack {
                Text("Get Info")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                Spacer()
                Text("⌘ I")
                    .font(.custom("ChicagoFLF", size: 11))
                    .foregroundColor(.gray)
            }
            .padding(.leading, 6.5)
            
            HStack {
                Text("Put Back")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                Spacer()
            }
            .padding(.leading, 6.5)
            
            VStack {
                
                HStack {
                    Text("Close")
                            .font(.custom("ChicagoFLF", size: 11))
                            .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.leading, 6.5)
                HStack {
                    Text("Close All")
                            .font(.custom("ChicagoFLF", size: 11))
                            .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.leading, 6.5)
                HStack {
                    Text("Print")
                            .font(.custom("ChicagoFLF", size: 11))
                            .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.leading, 6.5)
            }
            .frame(height: 60)
            .border(Color.gray, width: 1)
            .padding(.top, 3)
            
            
            HStack {
                Text("Eject")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                Spacer()
                Text("⌘ E")
                    .font(.custom("ChicagoFLF", size: 11))
                    .foregroundColor(.gray)
            }
            .padding(.leading, 6.5)
            
            Spacer()
            
        }
            .frame(width: 125, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .border(Color.black, width: 1.2)
            .background(Color.white)
            .position(x: 114, y: 67)
            .blur(radius: 0.3)
    }
}

