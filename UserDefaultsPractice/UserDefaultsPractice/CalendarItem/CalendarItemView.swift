//
//  CalendarItemView.swift
//  UserDefaultsPractice
//
//  Created by Vasyl Nadtochii on 07.06.2022.
//

import SwiftUI
import UIKit

struct CalendarItemView: View {
    @ObservedObject var viewModel: CalendarItemViewModel

    var body: some View {
        Text("\(viewModel.number)")
            .frame(
                width: UIScreen.screenWidth / 7 - 15,
                height: UIScreen.screenWidth / 7 - 15
            )
            .background(viewModel.completed ? .green : .red)
            .cornerRadius(.infinity)
            .onTapGesture {
                viewModel.completed.toggle()
            }
    }
}

struct CalendarItemView_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            CalendarItemView(viewModel: .init(number: 1))
            CalendarItemView(viewModel: .init(number: 24, completed: true))
        }
    }
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
}
