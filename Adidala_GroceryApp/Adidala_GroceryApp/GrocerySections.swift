//
//  GrocerySections.swift
//  Adidala_GroceryApp
//
//  Created by Adidala,Sindhuja on 4/12/22.
//

import Foundation
import UIKit

struct GrocerySections{
    var section = ""
    var items_array: [GroceryItem] = []
    
}
struct GroceryItem{
    var itemName = ""
    var itemImage = ""
    var itemInfo = ""
    
}
let sec1 = GrocerySections(section: "Beverages",
                           items_array: [
                            GroceryItem(itemName: "Thumsup", itemImage: "Thmsup", itemInfo: "Thums Up is a brand of cola in India. The logo is a red thumbs up. It was introduced in 1977 to offset the withdrawal of The Coca-Cola Company from India."),
                           GroceryItem(itemName: "Pepsi", itemImage: "Pepsi", itemInfo: "Pepsi is a carbonated soft drink manufactured by PepsiCo. Originally created and developed in 1893 by Caleb Bradham and introduced as Brad's Drink, it was renamed as Pepsi-Cola in 1898, and then shortened to Pepsi in 1961."),
                            GroceryItem(itemName: "Coke", itemImage: "Coke", itemInfo: "Coca-Cola, or Coke, is a carbonated soft drink manufactured by the Coca-Cola Company. Originally marketed as a temperance drink and intended as a patent medicine, it was invented in the late 19th century by John Stith Pemberton in Atlanta, Georgia"),
                            GroceryItem(itemName: "Sprite", itemImage: "Sprite", itemInfo: "Sprite is a colorless, lemon and lime-flavored soft drink created by The Coca-Cola Company. It was first developed in West Germany in 1959 as Fanta Klare Zitrone and was introduced in the United States under the current brand name Sprite in 1961 as a competitor to 7 Up."),
                            GroceryItem(itemName: "Fanta", itemImage: "Fanta", itemInfo: "Fanta is an orange soda drink. It was created in Germany in 1940. Fanta was created during World War II in Nazi Germany by the German Coca Cola (GmbH) bottling company. Because of the war, there was no shipping between Nazi Germany and the United States")
                           ])

let sec2 = GrocerySections(section: "Vegetables",
                           items_array:[
                            GroceryItem(itemName: "Tomato", itemImage: "Tomato", itemInfo: "The tomato is the edible berry of the plant Solanum lycopersicum, commonly known as the tomato plant. The species originated in western South America and Central America."),
                             GroceryItem(itemName: "EggPlant", itemImage: "EggPlant", itemInfo: "The eggplant is a delicate, tropical perennial plant often cultivated as a tender or half-hardy annual in temperate climates"),
                              GroceryItem(itemName: "Okra", itemImage: "Okra", itemInfo: "Okra or Okro, Abelmoschus esculentus, known in many English-speaking countries as ladies' fingers or ochro, is a flowering plant in the mallow family"),
                               GroceryItem(itemName: "Potato", itemImage: "Potato", itemInfo: "The potato is a starchy tuber of the plant Solanum tuberosum and is a root vegetable native to the Americas."),
                                GroceryItem(itemName: "Carrot", itemImage: "Carrot", itemInfo: "The carrot is a root vegetable, typically orange in color, though purple, black, red, white, and yellow cultivars exist, all of which are domesticated forms of the wild carrot, Daucus carota, native to Europe and Southwestern Asia.")
                                ])

let sec3 = GrocerySections(section: "Fruits",
                           items_array:[
                            GroceryItem(itemName: "Apple", itemImage: "Apple", itemInfo: "An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus."),
                            GroceryItem(itemName: "Banana", itemImage: "Banana", itemInfo: "A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa. "),
                            GroceryItem(itemName: "Grapes", itemImage: "Grapes", itemInfo: "Grapes are a good source of potassium, a mineral that helps balance fluids in your body. Potassium can help bring down high blood pressure and lower your risk of heart disease and stroke."),
                            GroceryItem(itemName: "Mango", itemImage: "Mango", itemInfo: "A mango is an edible stone fruit produced by the tropical tree Mangifera indica which is believed to have originated from the region between northwestern Myanmar, Bangladesh, and northeastern India."),
                             GroceryItem(itemName: "Strawberry", itemImage: "Strawberry", itemInfo: "Botanically, the strawberry fruit is considered an “accessory fruit” and is not a true berry. The flesh consists of the greatly enlarged flower receptacle and is embedded with the many true fruits, or achenes, which are popularly called seeds")
                                        ])

let Sections = [sec1 ,sec2 ,sec3]
