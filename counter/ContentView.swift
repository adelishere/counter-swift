import SwiftUI

struct ContentView: View {
    
    @State var x = 0
    @State private var warning = ""
    


    var body: some View {
        VStack {
            Text("you ate \(x) cookies")
            Button{
                x += 1
                if x >= 15 && x < 20{
                    warning = "don't eat so many cookies"
                }else if x >= 20 && x < 30{
                    warning = "don't eat soooooo many cookies"
                }else if x >= 30 {
                    warning = "you're gonna be dead 💀"
                }            }label: {
                Text("OM NOM NOM")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(10)
                    .shadow(color: .white.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
            }
            Button {
                x = 0
                warning = ""
            }label: {
                Text("clear")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
                    .shadow(color: .white.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
            }

            Text("\(warning)")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//  Created by mohmmed adel on 23/06/2023.
/* video : https://www.loom.com/share/6fbedcd480f7423ca4a2a1764512a882?sid=14726413-5b18-485f-930f-6b6b7eddef3a
 
 code : https://code.tk.sg/qaqofuyehe.php
 */
