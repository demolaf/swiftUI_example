//
//  ContentView.swift
//  CWChrisTest
//
//  Created by Fadumo Ademola on 20/04/2022.
//

import SwiftUI

struct ContentView: View {
    // Hold on command and select on the preview item
    // to edit it using modifiers instead of writing
    // codes or opening the ui inspector
    
    // CONTAINER ELEMENTS
    // 1. VStack
    // 2. HStack
    // 3. ZStack
    //    var body: some View {
    //        VStack {
    //            Spacer()
    //            Image("war_icon")
    //                .resizable()
    //                .aspectRatio(
    //                    contentMode: .fit
    //                )
    //            Spacer()
    //            HStack() {
    //                Spacer()
    //                Text("Hello!")
    //                Spacer()
    //                Text("World!")
    //                Spacer()
    //            }
    //            Spacer()
    //        }
    //    }
    var body: some View {
        ZStack {
            Image(
                "background"
            ).ignoresSafeArea()
            VStack() {
                Spacer()
                
                Image("war_icon")
                
                Spacer()
                
                HStack() {
                    Spacer()
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                
                Spacer()
                
                Image("dealbutton")
                
                Spacer()
                
                HStack() {
                    Spacer()
                    ReusablePlayerText(
                        name: "DEMMS",
                        points: "0"
                    )
                    Spacer()
                    ReusablePlayerText(
                        name: "CPU",
                        points: "0"
                    )
                    Spacer()
                }
                
                Spacer()
            }.padding(.all, 24.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func ReusablePlayerText(name: String, points: String) -> some View {
    return VStack(alignment: .center) {
        Text(name)
            .fontWeight(.medium)
            .font(.system(size: 16))
            .padding(.bottom, 24)
        Text(points)
            .fontWeight(.regular)
            .font(.system(size: 48))
            .padding(.bottom, 24)
    }.foregroundColor(Color.white)
}
