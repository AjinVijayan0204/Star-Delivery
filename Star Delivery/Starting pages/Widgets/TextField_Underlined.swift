//
//  TextField_Underlined.swift
//  Star Delivery
//
//  Created by Ajin on 18/12/22.
//

import SwiftUI

struct TextField_Underlined: View {
    
    var placeholder: String
    @State var text: String = ""
    @State var type: TextFieldTypes = .password
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack() {
                
                if self.type == .normal || self.type == .unhidePassword {
                    TextField(placeholder, text: $text)
                        .frame(width: AppMeasurements.loginWidth - 40, alignment: .leading)
                } else if self.type == .password {
                    SecureField(placeholder, text: $text)
                        .frame(width: AppMeasurements.loginWidth - 40, alignment: .leading)
                }
                    
                    
                Image(systemName: self.type.getIcon())
                    .frame(width: 5,alignment: .leading)
                    .foregroundColor(AppColors.lightGrey)
                    .onTapGesture {
                        if self.type == .password{
                            self.type = .unhidePassword
                        }else if self.type == .unhidePassword{
                            self.type = .password
                        }
                    }
                    
            }
            .frame(width: AppMeasurements.loginWidth, height: 10, alignment: .leading)
                                    
            Rectangle()
                .frame(height: 1)
                .foregroundColor(AppColors.lightGrey)
    
        }
        .frame(width: AppMeasurements.loginWidth, alignment: .leading)
        
    }
}

enum TextFieldTypes{
    case normal
    case password
    case unhidePassword
}

extension TextFieldTypes{
    
    func getIcon() -> String{
        
        switch self{
        case .normal:
            return ""
        case .password:
            return "eye"
        case .unhidePassword:
            return "eye.slash"
        }
    }
}
struct TextField_Underlined_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Underlined(placeholder: "Enter")
    }
}
