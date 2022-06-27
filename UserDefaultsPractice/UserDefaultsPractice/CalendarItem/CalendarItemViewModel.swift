//
//  CalendarItemViewModel.swift
//  UserDefaultsPractice
//
//  Created by Vasyl Nadtochii on 07.06.2022.
//


import Foundation

class CalendarItemViewModel: ObservableObject {
    var userDefaultsService: UserDefaultsService
    let number: Int
    @Published var completed: Bool {
        didSet {
            self.userDefaultsService.saveInUserDefault(value: completed, for: number)
        }
    }
    
    func onTap() {
        completed.toggle()
    }
    
    init(number: Int, userProtocol: UserDefaultsService) {
        self.number = number
        self.userDefaultsService = userProtocol
        self.completed = userDefaultsService.getValue(for: number)
    }
}
