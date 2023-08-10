//
//  BindingDemo.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 24/07/2023.
//
// https://www.youtube.com/watch?v=btDMzB5x2Gs&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=23

// unit 8 keynote. slide 261

import SwiftUI

// main view
struct BindingDemo: View {
    @State var bgColor: Color = Color.pink
    @State var counter: Int = 0
    
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea(.all)
            
            VStack{
                ColorButton(bgColor: $bgColor, counter: $counter)

                Text("Number Counter: \(counter)")
                    .padding()
                    .font(.title2)
                    .foregroundColor(.black)
            }
            
        }
    }
}

struct BindingDemo_Previews: PreviewProvider {
    static var previews: some View {
        BindingDemo()
    }
}

// subview (child view)
struct ColorButton: View {
    @Binding var bgColor:Color
    @Binding var counter: Int
    
    var body: some View {
        Button {
            bgColor = Color.red.opacity(0.5)
        } label: {
            Text("Change Color")
                .foregroundColor(.white)
                .frame(width:100)
                .padding()
                .background(.blue)
                .cornerRadius(10)
                .shadow(radius: 10)
        }
        
        Button {
            counter += 1
        } label: {
            Text("Increase")
                .foregroundColor(.white)
                .frame(width:100)
                .padding()
                .background(.orange)
                .cornerRadius(10)
                .shadow(radius: 10)
        }
    }
}
