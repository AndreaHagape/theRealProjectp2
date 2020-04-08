//
//  FreshPercView.swift
//  theRealProjectp2
//
//  Created by JOHNSON, OLIVIA on 2/5/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct FreshPercView: View {
    
       @ObservedObject var myList = MyListClass()
       
    
       var body: some View {
           
           NavigationView {
               List {
                   ForEach(myList.items) { item in
                       // Pass binding to item into DetailsView
                       NavigationLink(destination: FPCalculatorView(item: self.$myList.items[self.myList.items.firstIndex(of: item)!])) {
                           Text(item.name)
                       }
                   }

               }
                      .navigationBarTitle(Text("Freshmen Percussion"))
               .navigationBarItems(trailing:
                   Button(action: {
                       let item = ListItem(name: "New Student")
                       self.myList.items.append(item)
                   }) {
                       Image(systemName: "plus")
                   }
               )
               navigationViewStyle(StackNavigationViewStyle())

           }
       }

}

struct FreshPercView_Previews: PreviewProvider {
    static var previews: some View {
        FreshPercView()
    }
}
