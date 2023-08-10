//
//  Shapes.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 03/08/2023.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        // shapes
        /**
         https://swiftontap.com/shape
            Capsule
            Circle
            ContainerRelativeShape
            Ellipse
            Path
            Rectangle
            RoundedRectangle
         */
        
        VStack{
//            Image(systemName: "heart.fill")
            Image(systemName: "cloud.sun.rain.fill")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .foregroundColor(Color.red)
                .frame(width: 100, height: 100)
            
            HStack {
                Capsule(style: .circular)
                    .fill(
                        
                        // RadialGradient
                        // AngularGradient
                        LinearGradient(
                            gradient: Gradient(colors: [Color.red,Color.white]),
                            startPoint: .topLeading,
                            endPoint:.bottom)
                    )
                    .padding(10)
                    
                Capsule(style: .circular)
                    .fill(
                        Color(red: 1.0, green: 0.0, blue: 1.0, opacity: 0.6)
                    )
                    .padding(10)
      
                Capsule(style: .circular)
                    .fill(Color(UIColor.systemGroupedBackground))
                    .padding(10)
                    .shadow(color: .gray, radius: 5, x: 5, y: 5)
                Capsule(style: .circular)
                    .strokeBorder(Color.blue, lineWidth: 5)
                    .background(Capsule().foregroundColor(Color("CustomColor")))
                    .padding(10)
                    
                
            }.frame(width: 400, height: 80, alignment: .leading)
         
            Text("10%")
                .font(.largeTitle)
                .font(.system(size: 20))
                .padding()
                .foregroundColor(Color.gray)
                .overlay(
                    RoundedRectangle(cornerRadius:40)
                        .stroke(.green, lineWidth: 5)
                        
                )
        }
        .padding()
        .background(Color.black)
    }
}


struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}

