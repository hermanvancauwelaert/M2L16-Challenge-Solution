//
//  DetailView.swift
//  M2L16 Challenge Solution
//
//  Created by Christopher Ching on 2021-02-04.
//  test

import SwiftUI
import AVKit

struct DetailView: View {
    
    var author: Author?

    var body: some View {
        
        // If no meditation set, can't display detail
        if let author = author  {
        
            VStack(alignment: .leading, spacing: 20.0) {
               
                
                // Author name
                Text(author.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    
                // Quotes
                ForEach (author.quotes, id: \.self) { quote in
                    Text(quote)
                }
            
                Spacer()
                
            }.padding()
        }
    }
    
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(author: Author.testData())
    }
}
