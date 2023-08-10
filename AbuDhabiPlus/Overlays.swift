//
//  Overlays.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 03/08/2023.
//

import SwiftUI

struct Overlays: View {
    var body: some View {
        VStack{
            
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(.blue)
                    .frame(width: 120, height: 120, alignment: .center)
            ).background(
                
                Circle()
                    .fill(LinearGradient(colors: [.white,.blue], startPoint: .top, endPoint: .trailing))
                    .frame(width: 150, height: 150, alignment: .center)
            )
                .padding(.bottom, 100)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                .overlay(
                    Text(" 1 ")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                        .bold()
                    ,alignment: .topLeading
                ).background(
                    Rectangle()
                        .frame(width: 120, height: 120, alignment: .center)
                        .foregroundColor(.blue)
                    , alignment: .center
                )
            
                .padding(.bottom, 100)
            
            
            Image (systemName: "heart.fill")
                .font(.system(size: 50))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(colors: [.red, Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.6)  ], startPoint: .topLeading , endPoint: .bottomLeading)
                        )
                        .frame(width: 100, height: 100, alignment: .center)
                        .shadow(color: .red, radius: 10, x: 0, y: 10)
                        .overlay(
                            Circle()
                                .frame(width: 32, height: 32)
                                .foregroundColor(.black)
                                .overlay(
                                    Text("5")
                                        .foregroundColor(.white)
                                        
                                ).overlay(
                                    Circle()
                                        .strokeBorder(Color.white, lineWidth: 2)
                                
                                )
                                .shadow(color: .red, radius: 10, x: 0, y: 5)
                                
                            , alignment:.topTrailing
                                                        
                        )
                )
        }

    }
}

struct Overlays_Previews: PreviewProvider {
    static var previews: some View {
        Overlays()
    }
}
