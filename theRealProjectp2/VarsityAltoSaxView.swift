//
//  VarsityAltoSaxView.swift
//  theRealProjectp2
//
//  Created by Shah, Rani on 2/18/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//


import SwiftUI

/*
struct ListItem: Identifiable, Equatable {
    var id = UUID()
    var name: String
}
 
class MyListClass: ObservableObject {
    @Published var items = [ListItem]()
    
}
 */

struct VarsityAltoSaxView: View {

   @ObservedObject var myList = MyListClass()
   

   var body: some View {
       
       NavigationView {
           List {
               ForEach(myList.items) { item in
                   // Pass binding to item into DetailsView
                   NavigationLink(destination: VWCalculatorView(item: self.$myList.items[self.myList.items.firstIndex(of: item)!])) {
                       Text(item.name)
                   }
               }

           }
                  .navigationBarTitle(Text("Varsity Alto Saxophone"))
           .navigationBarItems(trailing:
               Button(action: {
                   let item = ListItem(name: "Test")
                   self.myList.items.append(item)
               }) {
                   Image(systemName: "plus")
               }
           )
           navigationViewStyle(StackNavigationViewStyle())

       }
   }


}
        

struct VarsityAltoSaxView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityAltoSaxView()
    }
}
