//
//  AlertAndActionSheet.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 03/08/2023.
//


import SwiftUI

struct AlertAndActionSheet: View {
    
    @State var showAlert:Bool = false
    @State var showActionSheet: Bool = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        VStack{
            Button ("Click me"){
                showAlert = true
            }.padding()
            
            Button("Click me 2"){
                showActionSheet = true
            }.padding()
        }
        
        .confirmationDialog(Text("Action sheet"), isPresented:$showActionSheet) {
            Button("Red", role: .destructive) { backgroundColor = .red }
            Button("Green") { backgroundColor = .green }
            Button("Blue") { backgroundColor = .blue }
            Button("Cancel", role: .cancel) { }
            
        } message: {
            Text("Choose a color")
        }
        
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Delete").bold(),
                  message: Text("Are you sure to delete this item?"),
                  primaryButton: .destructive(Text("Yes"),
                    action: {
                    // TODO
            }),
                  secondaryButton: .cancel())
        }
        
    }
}

struct MyAlert_Previews: PreviewProvider {
    static var previews: some View {
        AlertAndActionSheet()
    }
}
