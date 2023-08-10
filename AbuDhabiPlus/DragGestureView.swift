
//  DragGestureView.swift
//  ContinuedLearining
//
//  Created by msweidan on 13/04/2023.
//

import SwiftUI
//https://www.youtube.com/watch?v=O3QAI8Mxh8M&list=PLwvDm4VfkdpiagxAXCT33Rkwnc5IVhTar&index=5

struct DragGestureView2: View {
    
    @State var StartOffsetY: CGFloat = UIScreen.main.bounds.height * 0.85
    @State var CurrentOffsetY: CGFloat = 0
    @State var EndingOffsetY: CGFloat = 0
    
    var body: some View{
        ZStack {
            Color.green.ignoresSafeArea()

            
            ExtractedView()
                .offset(y: StartOffsetY)
                .offset(y: CurrentOffsetY)
                .offset(y: EndingOffsetY)
            
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            withAnimation (.spring()) {
                                CurrentOffsetY = value.translation.height
                            }
                        })
                        .onEnded({ value in
                            withAnimation (.spring()) {
                                if CurrentOffsetY < -200 {
                                    EndingOffsetY = -StartOffsetY
                                } else if CurrentOffsetY > 200 {
                                    EndingOffsetY = 0
                                }
                                
                                CurrentOffsetY = 0
                            }
                        })
                )
         
            Text("Start: \(StartOffsetY) \n Current: \(CurrentOffsetY) \n End: \(EndingOffsetY)")
                .multilineTextAlignment(.leading)
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct ExtractedView: View {
    var body: some View {
        VStack(spacing: 20){
            Image(systemName: "chevron.up")
            Text("Sign up")
                .fontWeight(.bold)
            
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(width:100, height: 100)
                .foregroundColor(.green.opacity(0.8))
//                .shadow(radius: 10)
            
            Text("This is a custome sheet using SwiftUI basic elements, SwiftUI is very powerful language where you can create amzaing things with few code.")
                .multilineTextAlignment(.center)
            
            Text("Create an account")
                .padding()
                .padding(.horizontal)
                .background(Color.black.cornerRadius(10))
                .foregroundColor(.white)
            
            Spacer()
        }
        .frame(maxWidth:.infinity)
        .padding()
        .font(.title3)
        .background(.white)
        .cornerRadius(30)
    }
}

struct DragGestureView: View {
    
    @State var offset: CGSize = .zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .foregroundColor(Color.black)
            .shadow(color: Color.black.opacity(0.7), radius: 10)
            .offset(offset)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        withAnimation(.spring()){
                            offset = value.translation
                        }
                    })
                    .onEnded({ value in
                        withAnimation {
                            offset = .zero
                        }
                        
                    })
            )
    }
}

struct DragGestureView_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureView2()
    }
}



