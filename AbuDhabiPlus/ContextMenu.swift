//
//  ContextMenu.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 03/08/2023.
//


import SwiftUI

struct ContextMenu: View {
    @State var like: Bool = false
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Sweet home sweet")
                .font(.title2)
            Text("How to use context menu")
                .font(.subheadline)
                
        }
        .padding(20)
        .background(Color.black.cornerRadius(20))
        .foregroundColor(.white)
        .shadow(radius: 10)
        .contextMenu {
            Button {
                like.toggle()
            } label: {
                Label("Like", systemImage: "hand.thumbsup" )
            }

            Label("Burn", systemImage: "flame.fill")
            Label("Save", systemImage: "heart.fill")
        }
        
    }
}

struct MyContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
