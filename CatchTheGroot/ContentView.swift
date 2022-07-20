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
    @State var grootX = 200
    @State var grootY = 100
    
    var groot = Groot()
    
    var timer: Timer{
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { time in
            
            func randomNumberGenerator(){
                let randomX = Int.random(in: 1..<4)
                let randomY = Int.random(in: 1..<4)
                    
                print(randomX)
                print(randomY)

                switch randomX {
                case 1:
                    grootX = Int(groot.grootWidth * 0.5)
                case 2:
                    grootX = Int(groot.grootWidth * 1.5)
                case 3:
                    grootX = Int(groot.grootWidth * 2.5)
                default:
                    grootX = Int(groot.grootWidth * 0.5)
                }
            
                switch randomY {
                case 1:
                    grootY = Int(groot.grootWidth)
                case 2:
                    grootY = Int(groot.grootWidth * 2)
                case 3:
                    grootY = Int(groot.grootWidth * 3)
                default:
                    grootY = Int(groot.grootWidth )
                }
            }
            randomNumberGenerator()
        }
    }
    
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

            VStack{
                GrootImage(groot: groot)
                    .padding()
                    .position(x: CGFloat(grootX), y: CGFloat(grootY))
                    .onAppear(){
                   _ = self.timer
                }
            }.padding()

            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
