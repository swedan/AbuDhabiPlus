//
//  LogoAnimation.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 10/08/2023.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.4
    @State private var opacity = 0.5
    @State private var degree = 180
    
    var body: some View {
        if isActive == true {
            LandingPage()
        } else {
            VStack {
                VStack {
//                    Image (systemName: "globe.americas.fill")
                    Image("petshoplogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width:200)
                        .shadow(radius: 10)
                        .font(.system (size: 80))
                        .foregroundColor(.green)
                        .rotationEffect(Angle(degrees: Double(degree)))
                    Text("Company name")
                        .font(.title3)
                        .foregroundColor(.black.opacity (0.80))
                }
                .scaleEffect(size)
                .opacity (opacity)
                .onAppear {
                    withAnimation (.easeIn(duration: 1.5)) {
                        self.size = 0.9
                        self.opacity = 1.0
                        self.degree = 0
                    }
                }
            }
            
            // wait for 3 second and then show the landing page (LandingPage)
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


struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
