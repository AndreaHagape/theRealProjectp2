 
import SwiftUI
 
struct ListItem: Identifiable, Equatable {
    var id = UUID()
    var name: String
    var score: String
    var band: String
}
 
class MyListClass: ObservableObject {
    @Published var items = [ListItem]()
    
}
 
struct VarsityPercView: View {
 
    @ObservedObject var myList = MyListClass()
    
 
    var body: some View {
        
        NavigationView {
            List {
                ForEach(myList.items) { item in
                    // Pass binding to item into VPCalculatorView
                    NavigationLink(destination: VPCalculatorView(item: self.$myList.items[self.myList.items.firstIndex(of: item)!])) {
                        Text(item.name + " ; " + item.score + " ; " + item.band)
                    }
                }

            }
                   .navigationBarTitle(Text("Varsity Percussion"))
            .navigationBarItems(trailing:
                Button(action: {
                    let item = ListItem(name: "New Student ", score: " Score: " , band: " Band: ")
                    self.myList.items.append(item)
                }) {
                    Image(systemName: "plus")
                }
            )
            navigationViewStyle(StackNavigationViewStyle())

        }
    }
}
 
 
 
struct VarsityPercView_Previews: PreviewProvider {
    static var previews: some View {
        VarsityPercView()
    }
}
 
 
 
 
 
 
                                                                                                                      
                                           
