//
//  LandingPage.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 10/08/2023.
//

import SwiftUI

struct LandingPage: View {
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea(.all)
            VStack{
                Text("Hello, Globe!")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                Button {
                    
                } label: {
                    Text("Continue")                    
                }
                .buttonStyle(.borderedProminent)

            }

        }
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
