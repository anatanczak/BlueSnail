//
//  ContentView.swift
//  BlueSnail
//
//  Created by Anastasiia Tanczak on 24/01/2021.
//

import SwiftUI
import CoreGraphics

struct FirstLaunchView: View {
    @State private var nameInput: String = ""
    
    
    var body: some View {
        
        
        GeometryReader {geometry in
            let device = UIDevice.current.localizedModel
            let imageTitle: String = {
                if geometry.size.height > geometry.size.width {
                    print("portrait")
                } else {
                    print("landscape")
                }
                
                if device == "iPad" {
                    return "onboardingNameBackgroundiPad"
                    
                } else {
                    return "onboardingNameBackground"
                }
            }()
            
            
            ZStack(content: {
                VStack(alignment: .center, spacing: 0, content: {
                    Image(imageTitle)
                        .resizable()
                        .clipped()
                        .scaledToFit()
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    Text("What's your name?")
                        .font(Font.system(size: 26).weight(.thin))
                    
                    
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, content: {
                        Text("Create new \n account")
                            .multilineTextAlignment(.center)
                            .font(Font.system(size: 16))
                            .frame(width: geometry.size.width * 0.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                        
                        TextField("Name", text: $nameInput)
                            .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
                            .font(Font.system(size: 26).weight(.thin))
                            .background(Color("lightPink"))
                            .cornerRadius(24)
                            .frame(width: geometry.size.width * 0.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        Spacer()
                        
                        Button(action: {
                            print(nameInput)
                        }, label: {
                            Text("Next".uppercased())
                                .font(Font.custom("Jua-Regular", size: 22))
                                .frame(width: geometry.size.width * 0.2, alignment: .center)
                                .foregroundColor(.black)
                        })
                    })
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))
                    Spacer()
                })
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity ,alignment: .center)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .zIndex(1)
                
                
                
                HStack(content: {
                    VStack(alignment: .leading ,content: {
                        BlueStain()
                            .fill(Color("lightBlue"))
                            .frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.8)
                            .zIndex(0)
                        Spacer()
                    })
                    
                    Spacer()
                    
                    VStack(alignment: .leading ,content: {
                        Spacer()
                        YellowStain()
                            .fill(Color("lightYellow"))
                            .frame(width: geometry.size.width * 0.25, height: geometry.size.height * 0.8)
                            .zIndex(0)
                    })
                    
                })
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                
                
            })
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
        }
    }
}

struct BlueStain: Shape{
    func path (in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addCurve(to: CGPoint(x: rect.minX, y: rect.maxY), control1: CGPoint(x: rect.maxX * 0.12, y: rect.maxY * 0.22), control2: CGPoint(x: rect.maxX * 0.817, y: rect.maxY * 0.873))
        
        path.closeSubpath()
        return path
    }
    
}

struct YellowStain: Shape{
    func path (in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addCurve(to: CGPoint(x: rect.maxX, y: rect.maxY * 0.3), control1: CGPoint(x: rect.maxX * 0.02, y: rect.maxY * 0.324), control2: CGPoint(x: rect.maxX * 0.397, y: rect.maxY * 0.067))
        
        path.closeSubpath()
        return path
    }
    
}

struct FirstLaunchView_Previews: PreviewProvider {
    
    static var previews: some View {
        FirstLaunchView().previewLayout(PreviewLayout.fixed(width: 2532 / 3.0, height: 1170 / 3.0))
    }
}
