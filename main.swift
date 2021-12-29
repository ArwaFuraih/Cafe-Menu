//
//  main.swift
//  CafeMenu
//
//  Created by Arwa Alfuraih on 23/12/2021.
//

import Foundation
var check1 = true
repeat {
    print("-------------------------------")
    print("  💎  Welcome to RoyalBoba  💎  ")
    print("-------------------------------")
    print("Would you like to view our:")
    print("-------------------------------")
    print("🧋 1.Special Boba Menu. ")
    print("🔖 2.Exclusive offers.")
    print("📲 3.Social Media Accounts.")
    print("⏰ 4.Working Hours.")
    print("🚗 5.Delivery.")
    print("🪧 6.Exit.")
    



var bobaMenu: [menu] = []
var orderlist: [menu] = []


func menuList() -> [menu] {
  //  var bobaMenu: [menu]
    
    let milkTea    = menu (price: 11, name: "Jasmine Milk-Tea", rate: "4.6 / 5 ⭐️")
    let fruitTea   = menu (price: 13, name:"Peach FruitTea", rate: "4.4 / 5 ⭐️")
    let coffee     = menu (price: 15, name: "Iced Boba latte", rate: "4.9 / 5 ⭐️")
    let frostyMilk = menu (price: 12 , name: "Boba Frosty Milk", rate: "4.7 / 5 ⭐️")
    let sky        = menu (price: 21 , name: "Blue Sky Milk Tea", rate: "4.2 / 5 ⭐️")

    
    
    print("🛍 ITEM 🛍"+"\t\t\t\t     💲 Price 💲"+"\t\t ⭐️ Rate ⭐️")
    print("🌸 ", milkTea.name ," 🌸", "\t\t" , milkTea.price , "\t\t\t" , milkTea.rate)
    print("🧊 ",fruitTea.name, " 🧊" , "\t\t\t" , fruitTea.price , "\t\t\t" , fruitTea.rate)
    print("🍑 ",coffee.name," 🍑" , "\t\t" , coffee.price , "\t\t\t" , coffee.rate)
    print("☁️ ",frostyMilk.name," ☁️" , "\t\t" , frostyMilk.price , "\t\t\t" , frostyMilk.rate)
    print("🌌 ",sky.name," 🌌" , "\t\t" , sky.price , "\t\t\t" , sky.rate)

    
    bobaMenu = [milkTea , fruitTea , coffee , frostyMilk , sky] // array of objects
    
    return bobaMenu
    
}//func menuList

//Function to calcualte the total bill and discounts 15% if it's above 100$
func bill () {
    var totalBill : Double = 0.0
    for item in orderlist {
        totalBill += item.price
    }
    if totalBill > 100 {
        totalBill = totalBill - (totalBill*0.15)
    }
    print("🧾 Your total Bill is:",totalBill)
}

//Functio to saves the orders and append it to the list , exits when needed
func menuOrders() {
        var check = true
        
        repeat {
        print("🪧 Enter your order or Done when you're finished:")
            if let customerMenu : String = readLine() {
                if(customerMenu.lowercased() == "done" ) {
                check = false
                print("Your order is Done")
                    for item in orderlist {
                        print(item.name , item.price)
                    }
                    bill()
                break
            }
            else {
                let finalOrder = menu()
                for menu1 in bobaMenu {
                    if (menu1.name.lowercased() == customerMenu.lowercased())  {
                        
                        orderlist.append(menu1)

                    }//for
                    
                }
  
                
            }//else
        }//if
        } while check
    
}








if var customerChoice = readLine(){
    
    switch customerChoice{
        
    case "1" :
        menuList()
        menuOrders()
        //if var menuChoice = readLine(){
            

            
    case "2" :
        let offers = """
        Buy 1 Boba Fruit-Tea + get 1 FREE! 🎁
        15% off from 100$ purchases 🪄✨
        """
        print (offers)



    case "3" :
        let media = """
         📱Instegram @RoyalBoba_
         📱Twitter @RoyalBoba_
         😉 Don't forget to tag us 😉
        """
        print (media)
        
        
        
    case "4" :
        let workingHours = """
        ⏰ 6 a.m. – 11 p.m : Sunday - Thursday
        ⏰ 11 a.m. – 1 a.m : Friday - Saturday
        """
        print (workingHours)
        
        
        
    case "5" :
        let delivery = """
        You can place your delivery order through 🔰 Jahez , 🔰 HungerStation and 🔰 Marsool!
        """
        print (delivery)
    case "6" :
        check1 = false
        print ("Thank you for ordering with us please come back again ❤️")
        break
    default :
        print ("📍Sorry we dont have that right now please enter another number or 6 to Exit.")
    }//end of switch
}// end of if



} while check1
            
            
class menu {
    var price : Double
    var name : String
    var rate : String
    
    init( price : Double , name : String , rate : String){
        self.price = price
        self.name = name
        self.rate = rate
}
    init ()
    {
        price = 0
        name = ""
        rate = ""
    }

}//end of class menu


