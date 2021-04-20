import Foundation

import SwiftUI

public struct EditHover: View {
    public init() {}
    
    @State var selectHovered:Bool = false
    
    public var body: some View {
        VStack {
            
            HStack {
                
                Text("Undo")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                Spacer()
                
                Text("⌘ Z")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
            }
            .padding(.leading, 6.5)

            
            VStack {
                
                HStack {
                    
                    Text("Cut")
                            .font(.custom("ChicagoFLF", size: 11))
                            .foregroundColor(.gray)
                    Spacer()
                    
                    Text("⌘ K")
                            .font(.custom("ChicagoFLF", size: 11))
                            .foregroundColor(.gray)
                }
                .padding(.leading, 6.5)
                
                HStack {
                    
                    Text("Copy")
                            .font(.custom("ChicagoFLF", size: 11))
                            .foregroundColor(.gray)
                    Spacer()
                    
                    Text("⌘ C")
                            .font(.custom("ChicagoFLF", size: 11))
                            .foregroundColor(.gray)
                }
                .padding(.leading, 6.5)
                
                HStack {
                    
                    Text("Paste")
                            .font(.custom("ChicagoFLF", size: 11))
                            .foregroundColor(.gray)
                    Spacer()
                    
                    Text("⌘ V")
                            .font(.custom("ChicagoFLF", size: 11))
                            .foregroundColor(.gray)
                }
                .padding(.leading, 6.5)
                
                HStack {
                    
                    Text("Clear")
                            .font(.custom("ChicagoFLF", size: 11))
                            .foregroundColor(.gray)
                    Spacer()
                    
                }
                .padding(.leading, 6.5)
                
                VStack {
                    HStack {
                        Text("Select All")
                            .font(.custom("ChicagoFLF", size: 11))
                            .foregroundColor(selectHovered ? .white : .black)
                        Spacer()
                    }
                    
                    .padding(.leading, 6.5)
                }
                    .frame(width: 125, height: 20)
                    .background(selectHovered ? Color.black : .white)
                    .onHover { isHovered in
                            self.selectHovered = isHovered
                    }
                
                
            }
            
            .frame(height: 80)
            .border(Color.gray, width: 1)
            .padding(.top, 3)
            
            
            HStack {
                Text("Show Clipboard")
                        .font(.custom("ChicagoFLF", size: 11))
                        .foregroundColor(.gray)
                Spacer()
            }
            .padding(.leading, 6.5)
            
            Spacer()
            
        }
            .frame(width: 125, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .border(Color.black, width: 1.2)
            .background(Color.white)
            .position(x: 153, y: 57)
            .blur(radius: 0.3)
    }
}

