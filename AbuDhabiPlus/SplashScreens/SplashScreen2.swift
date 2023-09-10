//
//  SpashScreen2.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 10/08/2023.
//
//https://www.youtube.com/watch?v=9fz8EW-dX-I&list=LL&index=3
//https://www.canva.com/create/gif-maker/

import SwiftUI

struct SpashScreen2: View {
    @State private var isActive = false

    var body: some View {
        if isActive == true {
            LandingPage()
        } else {
            VStack{
                Spacer()
                    GIFView(name: "AnimationImage")
                        .frame(width:200, height:200)
                Spacer()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now()+3.0){
                    withAnimation {
                        isActive = true
                    }
                }
            }
        }
    }
}

struct SpashScreen2_Previews: PreviewProvider {
    static var previews: some View {
        SpashScreen2()
    }
}
