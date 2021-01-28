//
//  ContentView.swift
//  BlueSnail
//
//  Created by Anastasiia Tanczak on 24/01/2021.
//

import SwiftUI

struct FirstLaunchView: View {
    @State private var nameInput: String = ""
    
    var body: some View {
        GeometryReader {geometry in
            VStack(alignment: .center, spacing: 0, content: {
                Image("onboardingNameBackground")
                    .resizable()
                    .clipped()
                    .scaledToFit()
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

                Text("What's your name?")
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                    Spacer()
                    Text("Create new account")
                    Spacer()
                    TextField("Name", text: $nameInput)
                        .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                        .background(Color("lightPink"))
                        .cornerRadius(24)
                    Spacer()
                    Button(action: {
                        print(nameInput)
                    }, label: {
                        Text("Next")
                            .font(Font.custom("Jua-Regular", size: 50))
                    })
                    Spacer()
                })
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            })
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity ,alignment: .center)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }

    }
}

struct FirstLaunchView_Previews: PreviewProvider {
    
    static var previews: some View {
        FirstLaunchView().previewLayout(PreviewLayout.fixed(width: 2532 / 3.0, height: 1170 / 3.0))
    }
}
