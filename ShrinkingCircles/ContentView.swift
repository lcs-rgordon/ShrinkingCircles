//
//  ContentView.swift
//  ShrinkingCircles
//
//  Created by Russell Gordon on 2022-11-18.
//

import SwiftUI

struct ShrinkingCircles: Shape {
    
    func path(in rect: CGRect) -> Path {
        
        // Create the path
        var path = Path()
        
        // Loop to make smaller circles
        for i in 0...7 {
         
            let j = CGFloat(i)
            
            path.addEllipse(in: CGRect(origin: CGPoint(x: rect.midX - rect.midY + 25 * j, y: 0 + 25 * j),
                                       size: CGSize(width: rect.height - 50 * j,
                                                    height: rect.height - 50 * j)))

        }
        
        // Return the path
        return path
        
    }
    
}

struct ContentView: View {
    var body: some View {
        ShrinkingCircles()
            .stroke()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
