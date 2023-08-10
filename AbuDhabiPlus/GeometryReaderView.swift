//
//  GeometryReaderView.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 03/08/2023.
//

import SwiftUI

struct GeometryReaderView: View {
    func getPercentage (geo: GeometryProxy) -> Double{
        let maxDis = UIScreen.main.bounds.width / 2
        let currentX = geo.frame(in: .global).midX
        return Double(1 - (currentX / maxDis))
    }
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack{
                ForEach(0..<20) { index in
                    
                    GeometryReader { proxy in
                        RoundedRectangle(cornerRadius: 20)
                            .rotation3DEffect(
                                Angle(degrees: getPercentage(geo: proxy) * 30),
                                axis: (x: 0.0, y: 1.0, z: 0.0))
                    }
                    .frame(width: 200, height: 200)
                    .padding()
                }
            }
        }
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
