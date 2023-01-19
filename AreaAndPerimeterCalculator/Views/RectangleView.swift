//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Audrey Jiang on 2023-01-19.
//

import SwiftUI

struct RectangleView: View {
    
    // MARK: Stored properties
    let length: Double = 7
    let width: Double = 5
    
    // MARK: Computed properties
    var area: Double {
        return length * width
    }
    
    // Expressing the user interface
    var body: some View {
        VStack(spacing: 15) {
            
            HStack {
                Image("Rectangle")
                    .resizable()
                    .scaledToFit()
                .frame(width: 250)
                
                Spacer()
            }
            
            Text("Length")
                .font(.title2)
                .bold()
            
            // Use string interpulation to convert
            // The Double data type to text (String)
            //
            // \(variale)
            Text("\(length)")
                .font(.title2)
            
            Text("Width")
                .font(.title2)
                .bold()
            
            Text("\(width)")
                .font(.title2)
            
            Text("Area")
                .font(.title2)
                .bold()
            
            Text("35.0")
                .font(.title2)
            
            Spacer()
            
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
