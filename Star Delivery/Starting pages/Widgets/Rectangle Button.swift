//
//  Rectangle Button.swift
//  Star Delivery
//
//  Created by Ajin on 18/12/22.
//

import SwiftUI

struct Rectangle_Button: View {
    
    var title: String
    var type: ButtonTypes = .normal
    var action: () -> Void
    
    var body: some View {
        
        Button(action:action,
               label: {
            Text(title)
                .foregroundColor(.white)
                .font(.custom("Arial", size: 25))
                .bold()
        })
        .background{
            Rectangle()
                .foregroundColor(self.type.getColor())
                .frame(width: AppMeasurements.loginWidth, height: 50)
        }
    }
}

enum ButtonTypes{
    case normal
}

extension ButtonTypes{
    
    func getColor() -> Color{
        switch self{
        case .normal:
            return AppColors.primaryColor
        }
    }
    
}

/*
struct Rectangle_Button_Previews: PreviewProvider {
    static var previews: some View {
        Rectangle_Button()
    }
}
*/
