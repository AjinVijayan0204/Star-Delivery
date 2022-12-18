//
//  Login.swift
//  Star Delivery
//
//  Created by Ajin on 17/12/22.
//

import SwiftUI

struct Login: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var route = NavigationPath()
    
    var body: some View {
        
        NavigationStack(path: $route) {
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
                
                Group{
                    TextField_Underlined(placeholder: AppStrings.email_placeholder, text: $username)
                        .padding(.top, 30)
                    
                    TextField_Underlined(placeholder: AppStrings.password_placeholder, text: $password, type: .password)
                        .padding(.top, 20)
                    
                    NavigationLink(destination: Text("Forgot Password")) {
                        Text(AppStrings.forgot_password)
                            .foregroundColor(AppColors.primaryColor)
                    }
                    .frame(width: AppMeasurements.loginWidth, alignment: .trailing)
                    .padding(.top)
                    
                }
                
                Rectangle_Button(title: AppStrings.login, action: {
                    //TODO: - login implementation
                    
                })
                .frame(width: AppMeasurements.loginWidth)
                .padding(.top)
                
                
            }
            .modifier(FullScreenTopLeading())
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
