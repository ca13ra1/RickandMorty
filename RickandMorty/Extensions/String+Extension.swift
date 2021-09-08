//
//  String+Extension.swift
//  String+Extension
//
//  Created by cole cabral on 2021-09-07.
//

import Foundation
import SwiftUI

extension String {
    func stats() -> Color {
        var color = Color.clear
        switch self {
        case "Alive":
            color = Color(#colorLiteral(red: 0.002057942161, green: 0.7247604216, blue: 0.003193084639, alpha: 1))
        case "Dead":
            color = Color(#colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))
        case "unknown":
            color = Color(#colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))
        default:
            color = Color.clear
        }
        return color
    }
}
