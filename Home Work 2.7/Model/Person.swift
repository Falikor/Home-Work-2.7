//
//  Person.swift
//  Home Work 2.7
//
//  Created by Татьяна Татьяна on 08.06.2021.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: Int
    let email: String
    
    var fulname: String {
        "\(name) \(surname)"
    }
}

class DataManager {
    let name: [String] = ["Иван", "Виктор", "Татьяна", "Петр", "Тимофей", "Анастасия", "Елена"]
    let surname: [String] = ["Иванов", "Санфиров", "Бугреева", "Богомолов", "Корнев", "Соколова", "Запольнова"]
    let phone: [Int] = [89654567898, 89654567234, 89654560987, 89654987653, 89654567823, 89654567812, 89654567866]
    let email: [String] = ["bnmjg@mail.ru", "safasdsad@mail.ru", "sfasdsd@mail.ru", "xcvzxvcxz@mail.ru", "sadsfdf@mail.ru", "gfhfghfg@mail.ru", "ghfghfew@mail.ru", ]
}
