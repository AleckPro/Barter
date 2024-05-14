//
//  Exclusive.swift
//  Barter
//
//  Created by Aleck (Pro) on 2024-05-14.
//

import SwiftUI

struct Exclusive: View {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        VStack(spacing: -10) {
            HStack {
                Text("Exclusive")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
                
                Spacer()
            }
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(1..<6) { index in
                        GeometryReader { geo in
                            NavigationLink(destination: DetailsPage(image: "shoes\(index)", index: index)) {
                                Image("shoes\(index)")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 200)
                            }
                        }
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(2)
                        .aspectRatio(1, contentMode: .fit)
                        .background(RoundedRectangle(cornerRadius: 10).stroke(.black, lineWidth: 1))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    Exclusive()
}
