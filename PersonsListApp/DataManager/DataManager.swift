//
//  DataManager.swift
//  PersonsListApp
//
//  Created by Pandos on 17.02.2021.
//

import Foundation

class DataManager {
    
    static let spisok = DataManager()
    
    var names = ["Артем", "Александр", "Виктор", "Влад",
                 "Максим", "Георгий", "Дмитрий",
                 "Сергей", "Викентий", "Анатолий"]
    
    var surnames = ["Петров", "Павлов", "Сидоров", "Кузнецов",
                    "Романов", "Иванов", "Воробьев", "Зайцев",
                    "Киселев", "Соколов"]
    
    var emails = ["34ds@yandex.ru", "cagh@mail.ru", "123d@rambler.ru",
                  "hhhh@gmail.ru", "vvdd@yandex.ru", "plpf@yandex.ru",
                  "ertv@rambler.ru", "vjvj@rambler.ru", "slfv@mail.ru",
                  "llll@mail.ru"]
    
    var phones = ["578640393", "553599665", "135744356", "404950695",
                  "562880225", "738594072", "889977665", "554466443",
                  "334400492", "345678975"]
}
