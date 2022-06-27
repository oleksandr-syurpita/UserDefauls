//
//  ContentView.swift
//  UserDefaultsPractice
//
//  Created by Vasyl Nadtochii on 07.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    let data = (1...30)

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            VStack {
                LazyVGrid(columns: columns) {
                    ForEach(data, id: \.self) { number in
                        CalendarItemView(viewModel: .init(number: number, userProtocol: UserDefaultsServiceImpl()))
                    }
                }
               
                .navigationTitle("Complete All Days!")
                .padding()
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
