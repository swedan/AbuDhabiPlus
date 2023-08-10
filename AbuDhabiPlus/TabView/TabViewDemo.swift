//
//  TabViewDemo.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 26/07/2023.
//

import SwiftUI

struct TabViewDemo: View {
    var body: some View {
        TabView{
            // view 1
            VStack{
                Image(systemName: "applelogo")
                    .font(.title)
                    .padding()
                Text("View number 1")
            }
                .tabItem {
                    Image(systemName: "gamecontroller")
                        .font(.title)
                    Text("View 1")
                }
            // view 2
            VStack{
                Image(systemName: "applelogo")
                    .font(.title)
                    .padding()
                Text("View number 2")
            }
                .tabItem {
                    Image(systemName: "house.circle.fill")
                    Text("View 2")
                }
            
            // view 3
            View3()
                .tabItem {
                    Image(systemName: "cursorarrow.motionlines")

                    Text("View 3")
                }
            // ..

        }
//        .tabViewStyle(DefaultTabViewStyle())
        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDemo()
            .preferredColorScheme(.dark)
    }
}

//
//struct View3: View {
//    var body: some View {
//        
//        Text("View 3")
//            .padding()
//            .font(.system(size: 100))
//        
//    }
//}
