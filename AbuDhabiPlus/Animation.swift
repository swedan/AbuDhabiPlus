//
//  Animation.swift
//  AbuDhabiPlus
//
//  Created by msweidan on 03/08/2023.
//

//https://www.youtube.com/watch?v=0WY-wrW2_bs&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=26
// https://www.youtube.com/watch?v=0H4G3lGnJE0&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=27
//https://medium.com/@RobertGummesson/a-look-at-uiview-animation-curves-part-1-191d9e6de0ab

import SwiftUI

struct MyAnimation: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        
        VStack{
            Button {
                withAnimation(Animation.default.delay(1)){ // delay one second
                    isAnimated.toggle()
                }
            } label: {
                Text("Click me")
                    .font(.title2)
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50: 10)
                .fill(isAnimated ? Color.green: Color.red)
                .frame(width: isAnimated ? 100: 300,
                       height: isAnimated ? 100: 300)
                .rotationEffect(Angle(degrees: isAnimated ? 180: 0))
            Spacer()
        }
    }
}

struct MyAnimation_Previews: PreviewProvider {
    static var previews: some View {
        MyAnimation()
    }
}
