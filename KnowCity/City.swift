//
//  City.swift
//  KnowCity
//
//  Created by Aman Mulla on 30/07/21.
//

import Foundation

struct City {
    let name: String
    let imageURL: String
    let place: String
    let description: String
    let famousFood: String
    let language: String
    
}

extension City{
    static func all()-> [City]{
        return[
            City(name: "Pune", imageURL: "pune", place: "Shanivar Wada", description: "Oxford of East", famousFood: "Misal Paav", language: "Marathi"),
            City(name: "Mumbai", imageURL: "mumbai", place: "Film City", description: "City of Dreams", famousFood:"Vada Paav" , language: "Marathi"),
            City(name: "Hyderabad", imageURL: "hyderabad", place: "Char Minar", description: "Emerging Software City", famousFood: "Biryani", language: "Telugu"),
            City(name: "New Delhi", imageURL: "delhi", place: "India Gate", description: "Capital of India", famousFood: "Chaat", language: "Hindi"),
            City(name: "Jaipur", imageURL: "jaipur", place: "City Palace", description: "Pink City", famousFood: "Dal Bhat Churma", language: "Hindi"),
            City(name: "Chennai", imageURL: "chennai", place: "Marina beach", description: "Cultural Capital of South India", famousFood: "idly Dosa", language: "Tamil"),
            City(name: "Banglore", imageURL: "banglore", place: "Banglore Palace", description: "Silicon valley of India", famousFood: "Bhel", language: "Kannad"),
            City(name: "Kolkata", imageURL: "kolkata", place: "Victoria Memorial", description: "City of Joy", famousFood: "Rice and Fish", language: "Bengali"),
            
        ]
    }
}
