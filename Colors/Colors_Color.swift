/*--------------------------------------------------------------------------------------------------------------------------
    File: Colors_Color.swift
  Author: Kevin Messina
 Created: Nov 13, 2019
Modified: Aug 28, 2022

©2019-2022 Creative App Solutions, LLC. - All Rights Reserved.
----------------------------------------------------------------------------------------------------------------------------
NOTES:
 
2022_08_28 - Added extension to make raw representable for use with @AppStorage. Removed the prior swift file ext_color.

--------------------------------------------------------------------------------------------------------------------------*/

import Foundation
import SwiftUI

/// Allows Color to be able to be saved  to @AppStorage
extension Color: RawRepresentable {
    // TODO: Sort out alpha
    public init?(rawValue: Int) {
        let red =   Double((rawValue & 0xFF0000) >> 16) / 0xFF
        let green = Double((rawValue & 0x00FF00) >> 8) / 0xFF
        let blue =  Double(rawValue & 0x0000FF) / 0xFF
        self = Color(red: red, green: green, blue: blue)
    }
    
    public var rawValue: Int {
        let red = Int(coreImageColor.red * 255 + 0.5)
        let green = Int(coreImageColor.green * 255 + 0.5)
        let blue = Int(coreImageColor.blue * 255 + 0.5)
        return (red << 16) | (green << 8) | blue
    }
    
    private var coreImageColor: CIColor {
        return CIColor(color: UIColor(self))
    }
}

extension Color {
    // Crayons
    
    let a = Color.red
//    static let snow         = Color("snow")  //Color.Apple.Crayons.snow
//    static let mercury      = Color.Apple.Crayons.mercury
//    static let silver       = Color.Apple.Crayons.silver
//    static let magnesium    = Color.Apple.Crayons.magnesium
//    static let aluminum     = Color.Apple.Crayons.aluminum
//    static let nickel       = Color.Apple.Crayons.nickel
//    static let tin          = Color.Apple.Crayons.tin
//    static let steel        = Color.Apple.Crayons.steel
//    static let iron         = Color.Apple.Crayons.iron
//    static let tungsten     = Color.Apple.Crayons.tungsten
//    static let lead         = Color.Apple.Crayons.lead
//    static let licorice     = Color.Apple.Crayons.licorice
//    static let cayenne      = Color.Apple.Crayons.cayenne
//    static let maraschino   = Color.Apple.Crayons.maraschino
//    static let salmon       = Color.Apple.Crayons.salmon
//    static let maroon       = Color.Apple.Crayons.maroon
//    static let strawberry   = Color.Apple.Crayons.strawberry
//    static let carnation    = Color.Apple.Crayons.carnation
//    static let magenta      = Color.Apple.Crayons.magenta
//    static let bubblegum    = Color.Apple.Crayons.bubblegum
//    static let eggplant     = Color.Apple.Crayons.eggplant
//    static let plum         = Color.Apple.Crayons.plum
//    static let grape        = Color.Apple.Crayons.grape
//    static let lavender     = Color.Apple.Crayons.lavender
//    static let midnight     = Color.Apple.Crayons.midnight
//    static let blueberry    = Color.Apple.Crayons.blueberry
//    static let orchid       = Color.Apple.Crayons.orchid
//    static let ocean        = Color.Apple.Crayons.ocean
//    static let aqua         = Color.Apple.Crayons.aqua
//    static let sky          = Color.Apple.Crayons.sky
//    static let turquoise    = Color.Apple.Crayons.turquoise
//    static let ice          = Color.Apple.Crayons.ice
//    static let spindrift    = Color.Apple.Crayons.spindrift
//    static let moss         = Color.Apple.Crayons.moss
//    static let clover       = Color.Apple.Crayons.clover
//    static let seafoam      = Color.Apple.Crayons.seafoam
//    static let spring       = Color.Apple.Crayons.spring
//    static let fern         = Color.Apple.Crayons.fern
//    static let flora        = Color.Apple.Crayons.flora
//    static let honeydew     = Color.Apple.Crayons.honeydew
//    static let asparagus    = Color.Apple.Crayons.asparagus
//    static let lemon        = Color.Apple.Crayons.lemon
//    static let lime         = Color.Apple.Crayons.lime
//    static let banana       = Color.Apple.Crayons.banana
//    static let mocha        = Color.Apple.Crayons.mocha
//    static let tangerine    = Color.Apple.Crayons.tangerine
//    static let canteloupe   = Color.Apple.Crayons.canteloupe
// Apple Colors
//    static let blue_Gray        = Color.Apple.blue_Gray
//    static let purple_Light     = Color.Apple.purple_Light
//    static let green_Dark       = Color.Apple.green_Dark
//    static let green_Yellow     = Color.Apple.green_Yellow
//    static let yellow_Light     = Color.Apple.yellow_Light
//    static let linen            = Color.Apple.linen
//    static let orange_Dark      = Color.Apple.orange_Dark
//    static let gold             = Color.Apple.gold
//    static let rust             = Color.Apple.rust
//    static let brown            = Color.Apple.brown
//    static let brown_Medium     = Color.Apple.brown_Medium
//    static let brown_Dark       = Color.Apple.brown_Dark
//    static let red_Light        = Color.Apple.red_Light
//    static let red_Bright       = Color.Apple.red_Bright
//    static let red_Dark         = Color.Apple.red_Dark
}
    

