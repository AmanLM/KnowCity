//
//  ContentView.swift
//  KnowCity
//
//  Created by Mulla Aman on 30/07/21.


import SwiftUI

struct ContentView: View {
    let cities = City.all()
    var body: some View {
        NavigationView{
            List(self.cities, id:\.name){ city in
                NavigationLink(destination: CityDetail(city:city)
                ){
                    CityTell(city: city)
                }
            }
            .navigationBarTitle("KnowCity")
            .accentColor(.blue)
            .padding()
            .font(.largeTitle)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CityTell: View {
    let city: City
    
    var body: some View{
        HStack{
            Image(city.imageURL)
                .resizable()
                .frame(width:100,height:100)
                .cornerRadius(20)
                
                
            VStack(alignment: .leading){
                Text(city.name)
                    .bold()
                    .font(.system(size: 36))
                    .padding()

            }
            //.padding()
        }
        
    }
}
