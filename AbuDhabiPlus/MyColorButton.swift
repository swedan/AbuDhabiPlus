//
//  ColorButton.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 10/09/2023.
//

import SwiftUI

struct MyColorButton: View {
    var body: some View {
        
        VStack{
            Text("Screen Title")
                .font(.title)
            HStack{
                Button {
                    // add your action here
                } label: {
                    Text("Stallions")
                        .bold()
                        .frame(width: 100)
                        .padding(20)
                        .foregroundColor(.black)
                        .background(.red)
                        .shadow(radius: 10)
                        .cornerRadius(10)
                        .opacity(0.9)
                }
                .shadow(radius: 10)
                .background(
                    BubbleButton(x1: -30, y1: -20, x2: 50, y2: 20,
                                 color1: [.red,.white], color2: [.green, .white])
                )

                Button {
                    // add your action here
                } label: {
                    Text("Scorpions")
                        .bold()
                        .frame(width: 100)
                        .padding(20)
                        .foregroundColor(.black)
                        .background(.yellow)
                        .cornerRadius(10)
                        .opacity(0.9)
                }
                .shadow(radius: 10)
                .background(
                    BubbleButton(x1: -40, y1: -10, x2: 50, y2: 10,
                                 color1: [.blue,.white], color2: [.yellow, .gray])
                )
            }
            // vertical space between the buttons
            .padding(.vertical, 60)
            
            // second button row
            HStack{
                Button {
                    // add your action here
                } label: {
                    Text("Camels")
                        .bold()
                        .frame(width: 100)
                        .padding(20)
                        .foregroundColor(.black)
                        .background(.green)
                        .shadow(radius: 10)
                        .cornerRadius(10)
                        .opacity(0.9)
                }
                .shadow(radius: 10)
                .background(
                    BubbleButton(x1: -20, y1: -20, x2: 20, y2: 10,
                                 color1: [.white,.red], color2: [.white, .green])
                )

                Button {
                    // add your action here
                } label: {
                    Text("Falcons")
                        .bold()
                        .frame(width: 100)
                        .padding(20)
                        .foregroundColor(.black)
                        .background(.blue)
                        .cornerRadius(10)
                        .opacity(0.9)
                }
                .shadow(radius: 10)
                .background(
                    BubbleButton(x1: -60, y1: 30, x2: 40, y2: 20,
                                 color1: [.red,.red], color2: [.green, .green])
                    )
            }
            
        }
    }
}

struct MyColorButton_Previews: PreviewProvider {
    static var previews: some View {
        MyColorButton()
    }
}

struct BubbleButton: View {
    let x1: Double
    let y1: Double
    let x2: Double
    let y2: Double
    let color1: [Color]
    let color2: [Color]
    var body: some View {
        Circle()
            .fill(
                LinearGradient(colors: color1, startPoint: .topLeading , endPoint: .bottomLeading)
            )
            .opacity(0.5)
            .offset(x: x1, y: y1)
        
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: color2, startPoint: .topLeading , endPoint: .bottomLeading)
                    )
                    .opacity(0.6)
                    .offset(x: x2, y: y2)
            )
    }
}
