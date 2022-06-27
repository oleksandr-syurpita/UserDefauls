//
//  UserProtocol.swift
//  UserDefaultsPractice
//
//  Created by admin on 27.06.2022.
//

import SwiftUI

protocol UserDefaultsService {
    
    func saveInUserDefault(value:Bool, for number: Int)
    func getValue(for number: Int) -> Bool
    
}


class UserDefaultsServiceImpl: UserDefaultsService {
    func getValue(for number: Int) -> Bool {
        return  UserDefaults.standard.bool(forKey: "\(number)")

    }
    
    func saveInUserDefault(value: Bool, for number: Int) {
        UserDefaults.standard.set(value, forKey: "\(number)")
    }
}

class UserDefaultsServiceMock: UserDefaultsService {

    var numbers = [Int]()
    init(numbers: [Int] = []) {
        self.numbers = numbers
    }
    func saveInUserDefault(value: Bool, for number: Int) {
        if value {
            numbers.append(number)
        }else {
            numbers.removeAll {
                $0 == number
            }
        }
    }
    func getValue(for number: Int) -> Bool {
        numbers.contains(number)
    }
}
