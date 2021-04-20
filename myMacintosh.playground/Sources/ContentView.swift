import SwiftUI
import AVFoundation

public struct ContentView: View {
    
    @State var player:AVAudioPlayer!

    @State public var desktopClicked:Bool = false
    @State public var trashClicked:Bool = false
    @State private var appleHovered:Bool = false
    @State private var fileHovered:Bool = false
    @State private var editHovered:Bool = false
    @State private var viewHovered:Bool = false
    @State private var specialHovered:Bool = false
    
    @State var selectHovered:Bool = false

    func resetVars() -> Void {
        self.appleHovered = false
        self.fileHovered = false
        self.editHovered = false
        self.viewHovered = false
        self.specialHovered = false
    }
    
    
    
    
    public init() {}
    
    public var body: some View {
            
            ZStack {
                
                Image(nsImage: #imageLiteral(resourceName: "background.png"))
                    .onTapGesture {
                        desktopClicked = false
                        trashClicked = false
                        self.resetVars()
                    }
                
                    VStack {
                        
                        VStack {
                            
                            HStack {
                                
                                        VStack {
                                            if appleHovered {
                                                Image(nsImage: #imageLiteral(resourceName: "logo.png"))
                                                    .colorInvert()
                                            } else {
                                                Image(nsImage: #imageLiteral(resourceName: "logo.png"))
                                            }
                                        }
                                            .frame(width: 30, height: 18)
                                            .background(appleHovered ? Color.black : .white)
                                            .onTapGesture {
                                                self.resetVars()
                                                appleHovered = true
                                            }
                                            .padding(.leading, 15)
                                
                                
                                        VStack {
                                        Text("File")
                                            .foregroundColor(fileHovered ? Color.white : .black)
                                            .font(.custom("ChicagoFLF", size: 12))
                                        }
                                            .frame(width: 30, height: 18)
                                            .background(fileHovered ? Color.black : .white)
                                            .onTapGesture {
                                                self.resetVars()
                                                fileHovered = true
                                            }

                                    
                                        VStack {
                                        Text("Edit")
                                            .foregroundColor(editHovered ? Color.white : .black)
                                            .font(.custom("ChicagoFLF", size: 12))
                                        }
                                            .frame(width: 30, height: 18)
                                            .background(editHovered ? Color.black : .white)
                                            .onTapGesture {
                                                self.resetVars()
                                                editHovered = true
                                            }
                                
                                        
                                        VStack {
                                        Text("View")
                                            .foregroundColor(viewHovered ? Color.white : .black)
                                            .font(.custom("ChicagoFLF", size: 12))
                                        }
                                            .frame(width: 40, height: 18)
                                            .background(viewHovered ? Color.black : .white)
                                            .onTapGesture {
                                                self.resetVars()
                                                viewHovered = true
                                            }


                                        
                                    
                                        VStack {
                                        Text("Special")
                                            .foregroundColor(specialHovered ? Color.white : .black)
                                            .font(.custom("ChicagoFLF", size: 12))
                                        }
                                            .frame(width: 55, height: 18)
                                            .background(specialHovered ? Color.black : .white)
                                            .onTapGesture {
                                                self.resetVars()
                                                specialHovered = true
                                            }

                                        
                                        Spacer()
                                
                            }
                            
                            
                        }
                        .frame(width: 514, height: 19)
                        .border(Color.black, width: 1)
                        .background(Color.white)
                        
                        Spacer()
                        
                        if appleHovered {
                            
                            AppleHover()
                            

                        } else if fileHovered {

                            FileHover()

                        } else if editHovered {

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
                                    .onTapGesture {
                                        desktopClicked = true
                                        trashClicked = true
                                        editHovered = false
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

                        } else if viewHovered {

                            ViewHover()

                        } else if specialHovered {

                            SpecialHover()

                        }
                        
                    }
                
                
                
                        
                       
                if self.desktopClicked {
                    Image(nsImage: #imageLiteral(resourceName: "systemdisk.png"))
                        .position(x: 460, y:58)
                        .colorInvert()
                        .onTapGesture {
                            desktopClicked = true
                            trashClicked = false
                        }
                } else {
                    Image(nsImage: #imageLiteral(resourceName: "systemdisk.png"))
                        .position(x: 460, y:58)
                        .onTapGesture {
                            desktopClicked = true
                            trashClicked = false
                        }
                }
                
                
                
                if trashClicked {
                    Image(nsImage: #imageLiteral(resourceName: "trash.png"))
                        .position(x: 470, y:288)
                        .colorInvert()
                        .onTapGesture {
                            trashClicked = true
                            desktopClicked = false
                    }
                } else {
                    Image(nsImage: #imageLiteral(resourceName: "trash.png"))
                        .position(x: 470, y:288)
                        .onTapGesture {
                            trashClicked = true
                            desktopClicked = false
                    }
                }
                        
            }

        .frame(width: 512, height: 342)
        .cornerRadius(8)
            .onAppear {
                let url = Bundle.main.url(forResource: "ready", withExtension: "mp3")
                guard url != nil else {
                    return
                }
                
                do {
                        player = try AVAudioPlayer(contentsOf: url!)
                        player?.play()
                } catch {
                    print("\(error)")
                }
            }
    }
    
}
