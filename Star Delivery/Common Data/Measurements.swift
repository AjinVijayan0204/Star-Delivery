//
//  Measurements.swift
//  Star Delivery
//
//  Created by Ajin on 18/12/22.
//

import Foundation
import UIKit
import SwiftUI

struct AppMeasurements{
    
    static let loginWidth = UIScreen.main.bounds.width - 50
    static let loginheight = UIScreen.main.bounds.height - 50
    
}

struct FullScreenTopLeading: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .frame(width: AppMeasurements.loginWidth, height: AppMeasurements.loginheight - 50, alignment: .topLeading)
            //.border(Color.black)
    }
}
