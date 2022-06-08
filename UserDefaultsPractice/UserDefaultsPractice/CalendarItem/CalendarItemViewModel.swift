//
//  CalendarItemViewModel.swift
//  UserDefaultsPractice
//
//  Created by Vasyl Nadtochii on 07.06.2022.
//

import Foundation

class CalendarItemViewModel: ObservableObject {
    let number: Int 
    @Published var completed: Bool {
        didSet {
            UserDefaults.standard.set(self.completed, forKey: "\(number)")
        }
    }
    
    init(number: Int, completed: Bool = false) {
        self.number = number
        self.completed =  UserDefaults.standard.bool(forKey: "\(number)")
    }
}
