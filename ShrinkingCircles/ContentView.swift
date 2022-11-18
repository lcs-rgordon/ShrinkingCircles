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
        
        // First circle, largest
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.midX - rect.midY, y: 0),
                                   size: CGSize(width: rect.height,
                                                height: rect.height)))

        // Second circle, largest
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.midX - rect.midY + 25, y: 0 + 25),
                                   size: CGSize(width: rect.height - 50,
                                                height: rect.height - 50)))

        // Third circle, largest
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.midX - rect.midY + 25 * 2, y: 0 + 25 * 2),
                                   size: CGSize(width: rect.height - 50 * 2,
                                                height: rect.height - 50 * 2)))

        // Fourth circle
        path.addEllipse(in: CGRect(origin: CGPoint(x: rect.midX - rect.midY + 25 * 3, y: 0 + 25 * 3),
                                   size: CGSize(width: rect.height - 50 * 3,
                                                height: rect.height - 50 * 3)))

        
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
