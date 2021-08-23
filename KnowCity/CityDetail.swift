//
//  CityDetail.swift
//  KnowCity
//
//  Created by Aman Mulla on 30/07/21.

import SwiftUI

struct CityDetail: View {
    let city:City
    @State private var zoomed:Bool = false
    var body: some View {
        VStack(alignment:.center){
                Image(city.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .onTapGesture {
                        withAnimation{
                            self.zoomed.toggle()
                    }
                }

                Text(city.name)
                    .bold()
                    .font(.title)
                Text(city.description)
                    .font(.title)
                    .bold()
                    .padding()
                HStack(alignment: .center){
                    Text("Famous Food:")
                        .bold()
                    Text(city.famousFood)
                }
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
                HStack{
                    Text("Tourism Place:")
                        .bold()
                    Text(city.place)
                        
                }
                .font(.title)
                .padding()
                HStack{
                    Text("Language:")
                        .bold()
                    Text(city.language)
                }
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        .navigationBarTitle(Text(city.name), displayMode: .inline)
        
    }
    
}

struct CityDetail_Previews: PreviewProvider {
    static var previews: some View {
        CityDetail(city: City(name: "Pune", imageURL: "pune", place: "Shanivar Wada", description: "Oxford of the East", famousFood: "Misal", language: "Marathi"))
    }
}
