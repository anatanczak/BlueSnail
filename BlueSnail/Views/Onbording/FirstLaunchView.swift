//
//  ContentView.swift
//  BlueSnail
//
//  Created by Anastasiia Tanczak on 24/01/2021.
//

import SwiftUI

struct FirstLaunchView: View {
    var body: some View {
        GeometryReader {geometry in
            VStack(alignment: .center, spacing: 0, content: {
                Image("onboardingNameBackground")
                    .resizable()
                    .clipped()
                    .scaledToFit()
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color.blue)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

                Text("BlaBla")
                Text("BlaBla")
                Text("BlaBla")
                Spacer()
            })
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity ,alignment: .center)
            .background(Color.yellow)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }

    }
}

struct FirstLaunchView_Previews: PreviewProvider {
    
    static var previews: some View {
        FirstLaunchView().previewLayout(PreviewLayout.fixed(width: 2532 / 3.0, height: 1170 / 3.0))
    }
}
