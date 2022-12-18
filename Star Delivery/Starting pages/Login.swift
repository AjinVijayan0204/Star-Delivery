//
//  Login.swift
//  Star Delivery
//
//  Created by Ajin on 17/12/22.
//

import SwiftUI

struct Login: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(AppStrings.welcome)
                .font(.custom("Arial", size: 15))
                .foregroundColor(AppColors.lightGrey)
                .padding(.bottom,0.8)
                .padding(.top,50)
            
            Group{
                
                Text(AppStrings.app_name)
                    .font(.custom("Arial", size: 25))
                    .fontWeight(.bold)
                    .padding(.bottom, 50)
                
                Text(AppStrings.login_tag)
                    .font(.custom("Arial", size: 12))
                    .fontWeight(.semibold)
                
            }
            
            TextField_Underlined(placeholder: "Enter")
        }
        .modifier(FullScreenTopLeading())
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
