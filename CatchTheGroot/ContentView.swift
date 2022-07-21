//
//  ContentView.swift
//  CatchTheGroot
//
//  Created by Erge Gevher Akova on 20.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var score = 0
    @State var time = 10
    @State var grootX = 200
    @State var grootY = 100
    @State var showAlert = false
    
    var groot = Groot()
    
    var timer: Timer{
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            
            func randomNumberGenerator(){
                let randomX = Int.random(in: 1..<4)
                let randomY = Int.random(in: 1..<4)

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
            
            if self.time > 0{
                self.time -= 1
                randomNumberGenerator()
            }else{
                showAlert = true
                grootX = Int(groot.grootWidth * 1.5)
                grootY = Int(groot.grootWidth * 2)
            }
            
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
                    .gesture(TapGesture(count: 1).onEnded({
                        if time > 0{
                            score += 1
                        }
                    }))
                    .onAppear(){
                   _ = self.timer
                }
            }.padding()

            Spacer()
            
        }.alert(isPresented: $showAlert) {
            return Alert(title: Text("Tome Over!"), message: Text("Want to Play Again?"), primaryButton: Alert.Button.default(Text("OK"), action: {
                time = 10
                score = 0
            }), secondaryButton: Alert.Button.cancel( Text("Cancel"), action: {
                showAlert = false
            }))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
