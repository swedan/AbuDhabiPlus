//
//  Badge.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 03/08/2023.
//

import SwiftUI

struct Badge: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea(.all)
            
            VStack{
                HStack{
                    Image(systemName: "bell")
                        .padding(5.0)
                        .font(.system(size: 30))
                        .overlay(alignment: .topTrailing) {
                            Imgbadge(number: 1, color:.white, bgColor:.red)
                        }
                    
                    Image(systemName: "bookmark")
                        .padding(5.0)
                        .font(.system(size: 30))
                        .overlay(alignment: .topTrailing) {
                            Imgbadge(number: 1, color:.white, bgColor:.blue)
                        }
                    Spacer()
                    Image(systemName: "cart")
                        .padding(5.0)
                        .font(.system(size: 30))
                        .overlay(alignment: .topTrailing) {
                            Imgbadge(number: 4, color:.white, bgColor:.black)
                        }
                }
            }
        }
        .padding(.horizontal,10)
    }
}

struct MotofeverMainView_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}

struct Imgbadge: View {
    var number: Int = 0
    var color:Color = Color.white
    var bgColor:Color = Color.red
    
    var body: some View {
        if (number >= 1){
            Text("\(number)")
                .font(.system(size: 13))
                .frame(width:20, height: 20)
                .background(bgColor)
                .cornerRadius(30)
                .foregroundColor(color)
                .shadow(radius: 3)
        }
    }
}

