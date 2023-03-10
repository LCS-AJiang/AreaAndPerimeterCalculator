//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Audrey Jiang on 2023-01-19.
//

import SwiftUI

struct RectangleView: View {
    
    // MARK: Stored properties
    // @State is a "properties wrapper" that essentially
    // tells SwiftUI to update the user interface when these values change
    @State var length: Double = 100
    @State var width: Double = 5
    
    // MARK: Computed properties
    var area: Double {
        return length * width
    }
    var perimeter: Double {
        return length + width * 2
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
            
            Group{
                
                Text("Length")
                    .font(.title2)
                    .bold()
                
                Slider(value: $length,
                       in: 0...100,
                       label: {Text("length")},
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: {Text("100")})
                
                // Use string interpulation to convert
                // The Double data type to text (String)
                //
                // \(variale)
                Text("\(length)")
                    .font(.title2)
            }
            
            Group{
                Text("Width")
                    .font(.title2)
                    .bold()
                
                Slider(value: $width,
                       in: 0...100,
                       label: {Text("width")},
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: {Text("100")})
                
                Text("\(width)")
                    .font(.title2)
            }
            
            Group{
                Text("Area")
                    .font(.title2)
                    .bold()
                
                Text("\(area)")
                    .font(.title2)
            }
            
            Group{
                Text("Perimeter")
                    .font(.title2)
                    .bold()
                
                Text("\(perimeter)")
                    .font(.title2)
            }
            
            Spacer()
            
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
