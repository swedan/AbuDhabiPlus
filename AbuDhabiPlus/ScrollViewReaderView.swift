
//  ScrollViewReaderView.swift
//  ContinuedLearining
//
//  Created by msweidan on 15/04/2023.
//

import SwiftUI

struct ScrollViewReaderView: View {
    @State var scrollToIndex: Int?
    @State var TextFieldText: String = ""
    @State var selectedItem: Bool = false
    
    var body: some View {
            
        VStack {
            VStack{
                TextField("Enter car number", text: $TextFieldText)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .background(.white)
                    .cornerRadius(40)
                    .keyboardType(.numberPad)
                    .padding(.vertical)
                    .foregroundColor(.black)
                Button("Click to Scroll Down"){
                    if let index  = Int(TextFieldText){
                        scrollToIndex = index
                    }
                }
            }   .padding()
                .background(.green)
                .foregroundColor(.white)
                .shadow(radius: 10)
            
            ScrollView{
                ScrollViewReader { proxy in
                    
                    ForEach(0..<50) { index in
                        Text("This is Item # \(index)")
                            .frame(maxWidth:.infinity)
                            .frame(height:100)
                            .background(scrollToIndex == index ? .green : .white)
                            .cornerRadius(20)
                            .shadow(radius: 20)
                            .padding()
                            .id(index)
                    }
                    
                    .onChange(of: scrollToIndex) { newValue in
                        withAnimation (.spring()){
                            proxy.scrollTo(newValue, anchor: .bottom)
                            selectedItem = true
                        }
                    }
                }
            }
        }
    }
}

struct ScrollViewReaderView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderView()
    }
}
