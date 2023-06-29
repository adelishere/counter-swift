import SwiftUI

struct ContentView: View {
    
    @State var x = 0
    @State private var warning = ""
    @State private var isDisabled = true
    @State private var appearence = 0.0



    var body: some View {
        VStack {
            Text("you ate \(x) cookies")
            Button{
                if x >= 0 && x < 10 {
                        x += 1
                }
                else if x >= 10 && x < 20{
                    warning = "don't eat so many cookies"
                    x += 1
                }else if x >= 20 && x < 30{
                    warning = "don't eat soooooo many cookies"
                    x += 1

                }else if x >= 30 && x < 40{
                    warning = "you're gonna be dead 💀"
                    x += 1
                }else if x >= 40 {
                    warning = "you are banned from eating cookies 🚫"
                    isDisabled = false
                    appearence = 100.0
                    
                }
            }label: {
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
                isDisabled = true
                appearence = 0.0

            }label: {
                Text("clear")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(10)
                    .shadow(color: .white.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .opacity(appearence)
                
            }.disabled(isDisabled)

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
