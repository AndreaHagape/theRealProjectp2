//
//  VarsityFluteView.swift
//  theRealProjectp2
//
//  Created by Shah, Rani on 2/13/20.
//  Copyright © 2020 HAGAPE, ANDREA. All rights reserved.
//

import SwiftUI

struct VarsityFluteView: View {
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
                     .navigationBarTitle(Text("Varsity Flute"))
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

struct VarsityFluteView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityFluteView()
    }
}
