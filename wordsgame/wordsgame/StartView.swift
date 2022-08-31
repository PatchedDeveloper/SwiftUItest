//
//  ContentView.swift
//  wordsgame
//
//  Created by Данила Кардашевский on 31.08.2022.
//

import SwiftUI

struct StartView: View {
    
    @State var bigword = ""
    @State var player1 = ""
    @State var player2 = ""
    
    var body: some View {
        
        VStack{
            Text("Words Game")
                .padding()
                .font(.custom("AvenirNext-bold", size: 42))
                .cornerRadius(16)
                .frame(maxWidth: .infinity)
                .background(Color("Firstplayer"))
                .foregroundColor(.white)

            TextField("Введите длинное слово",
                      text: $bigword)
            .font(.title)
            .padding()
            .background(.white)
            .cornerRadius(12)
            .padding(.top,32)
            
            TextField("Игрок 1",
                      text: $player1)
            .font(.title)
            .padding()
            .background(.white)
            .cornerRadius(12)
            .padding(.horizontal,32)
            
            TextField("Игрок 2",
                      text: $player2)
            .font(.title)
            .padding()
            .background(.white)
            .cornerRadius(12)
            .padding(.horizontal,32)
            
            
            Button {
                print("start button tapped")
            } label: {
            Text("start")
            .font(.custom("AvenirNext-bold", size: 30))
            .foregroundColor(.white)
            .padding()
                    .padding(.horizontal,64)
            .background(Color("Firstplayer"))
            .cornerRadius(16)
            .padding(.top)
                
            }

            
        }.background(Image("background").cornerRadius(15))
        
       
        
           
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
