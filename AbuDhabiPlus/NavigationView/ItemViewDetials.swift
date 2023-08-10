//
//  ItemViewDetials.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 26/07/2023.
//

import SwiftUI

struct ItemViewDetials: View {
    @Binding var itemNum: Int
    
    var body: some View {
        VStack{
            Text("This is item number: **\(itemNum)**")
                .padding()
                .font(.title)
        }
    }
}

struct ItemViewDetials_Previews: PreviewProvider {
    @State static var item = 0
    static var previews: some View {
        ItemViewDetials(itemNum: .constant(0))
    }
}
