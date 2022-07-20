//
//  ContentView.swift
//  CatchTheGroot
//
//  Created by Erge Gevher Akova on 20.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    @State var time = 10.0
    var body: some View {
        VStack{
            HStack{
                Text("Catch The Groot")
                    .font(.largeTitle)
            }
            .padding()
            
            HStack{
                Text("Scrore:")
                    .font(.title3)
                Text(String(score))
                    .font(.title3)
            }
             
            HStack{
                Text("Time:")
                    .font(.title3)
                Text(String(time))
                    .font(.title3)
            }.padding(.bottom)
            
            GrootImage()
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
