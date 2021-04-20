import SwiftUI


public struct AppleHover: View {
    @State var aboutHovered:Bool = false
    @State var finder:Bool = false
    
    public init() {}
    
    public var body: some View {
            
        VStack {
            
            
            VStack {
                Text("About the Finder...")
                    .font(.custom("ChicagoFLF", size: 11))
                    .foregroundColor(aboutHovered ? .white : .black)
            }
            .frame(width: 125, height: 20)
            .background(aboutHovered ? Color.black : .white)
            .border(Color.gray, width: 1)
            .onHover { isHovered in
                    self.aboutHovered = isHovered
            }
            .onTapGesture {
                self.finder = true
            }

            HStack {
                    Text("Scrapbook")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                    Spacer()
            }
            .padding(.leading, 6.5)

            
            HStack {
                    Text("Alarm Clock")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                Spacer()
            }
            .padding(.leading, 6.5)


            
            HStack {
                Text("Note Pad")
                    .font(.custom("ChicagoFLF", size: 11))
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding(.leading, 6.5)


            
            HStack {
                Text("Calculator")
                    .font(.custom("ChicagoFLF", size: 11))
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding(.leading, 6.5)


                    
            HStack {
                Text("Key Caps")
                    .font(.custom("ChicagoFLF", size: 11))
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding(.leading, 6.5)


                    
            HStack {
                Text("Control Panel")
                    .font(.custom("ChicagoFLF", size: 11))
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding(.leading, 6.5)


                    
            HStack {
                Text("Puzzle")
                    .font(.custom("ChicagoFLF", size: 11))
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding(.leading, 6.5)

                    
            Spacer()
            
        }
        .frame(width: 125, height: 125, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .border(Color.black, width: 1.2)
        .background(Color.white)
        .position(x: 77, y: 55)
        .blur(radius: 0.3)
            
        if finder {
            Image(nsImage:#imageLiteral(resourceName: "about.png"))
                .position(x: 250, y: -28)
        }
            
    }
        
}

