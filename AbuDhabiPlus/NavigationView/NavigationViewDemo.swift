//
//  NavigationViewDemo.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 26/07/2023.
//

import SwiftUI

struct NavigationViewDemo: View {
    var body: some View {
        NavigationView{
            
            List{
                ForEach(1...10, id:\.self){ item in
                    NavigationLink {
                        ItemViewDetials(itemNum: .constant(item))
                    } label: {
                        HStack{
                            Image(systemName: "applelogo")
                                .font(.title)
                                .foregroundColor(.red)
                            Text("item \(item)")
                        }
                    }
                }
                .navigationTitle("Items list")
            }
//            .listStyle(.grouped)
        }
    }
}

struct NavigationViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewDemo()
    }
}
