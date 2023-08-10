//
//  Transition.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 03/08/2023.
//
//
//https://www.youtube.com/watch?v=X6FAIa0nJoA&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=28

import SwiftUI

struct MyTransition: View {
    @State var showView: Bool = false;
    var body: some View {
        
        VStack{
            
            VStack{
                Button("Click me"){
                    withAnimation (.easeInOut) {
                        showView.toggle()
                    }
                    
                }
                
                Spacer()
            }
            if (showView){
                
                RoundedRectangle(cornerRadius: 14)
                    .frame(height: UIScreen.main.bounds.height * 0.5,
                           alignment: .bottom)
                    .transition(.move(edge: .bottom))
                                        
                    .overlay(
                        Text("This overlay text")
                            .foregroundColor(.white)
                    )
            }
            
        }.edgesIgnoringSafeArea(.bottom)
        
    }
}

struct MyTransition_Previews: PreviewProvider {
    static var previews: some View {
        MyTransition()
    }
}
