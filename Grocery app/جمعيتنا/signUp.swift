//
//  signUp.swift
//  جمعيتنا
//
//  Created by bibi on 10/01/2021.
//

import SwiftUI

struct signUp: View {
    @State var name = ""
    @State var phoneNum = ""
    @State var email = ""
    @State var password = ""
    @State var password2 = ""
    @State var showAlert = false
    @State var message = ""
    
    var body: some View {
        VStack(spacing : 40){
            HStack{
                Spacer()
                Text("إنشاء حساب جديد")
                    .padding()
                    .font(.custom("ExtaLight", size: 20))
                    .foregroundColor(Color("Color2"))
                
            }
            Spacer()
            
            TextField("الاسم الثلاثي", text: $name)
                .disableAutocorrection(true)
                .overlay(Rectangle().stroke(Color("Color2"),lineWidth: 1.5))
           
            
            
            TextField("رقم الهاتف", text: $phoneNum)
                .overlay(Rectangle().stroke(Color("Color2"),lineWidth: 1.5))
            
            TextField("البريد الالكتروني", text: $email)
                .overlay(Rectangle().stroke(Color("Color2"),lineWidth: 1.5))
            
            TextField("الرقم السري" , text: $password)
                .overlay(Rectangle().stroke(Color("Color2"),lineWidth: 1.5))
            
            TextField("تأكيد الرقم السري" , text: $password2)
                .overlay(Rectangle().stroke(Color("Color2"),lineWidth: 1.5))
            
            Spacer()
            
            
            
           
            ZStack{
                Button(action: {
                    if(name == "" || phoneNum == "" || email == "" || password == "" || password2 == ""){
                        showAlert = true
                        message = "من فضلك املأ جميع البيانات المطلوبه"
                    }
                    else if password != password2 {
                        showAlert = true
                        message = "كلمات المرور غير متطابقة"
                    }
                    else{
                        showAlert = false
                    }
                }, label: {
                    Text("إنشاء حساب")
                        .padding()
                        .foregroundColor(.black)
                        .opacity(0.8)
                        .frame(width: 220, height: 50, alignment: .center)
                        .background(Color("Color1").opacity(0.3))
                        .cornerRadius(18)
                        .shadow(radius: 20)
                }
                )
                if((name != "") && (phoneNum != "") && (email != "") && (password != "") && (password2 != "") && (password == password2)) {
                    NavigationLink(destination: logIn()) {
                        Text("إنشاء حساب")
                            .padding()
                            .foregroundColor(.black)
                            .opacity(0.8)
                            .frame(width: 200, height: 40, alignment: .center)
                            .background(Color("Color1").opacity(0.3))
                            .cornerRadius(18)
                            .shadow(radius: 20)
                    }
                }
            }
            
        }
        .alert(isPresented: $showAlert , content: {
            Alert(title: Text("Error"), message: Text(message))
        })
        .disableAutocorrection(true)
        .padding()
        .multilineTextAlignment(.leading)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .font(.system(size: 22))
        
    }
    
    

}
struct signUp_Previews: PreviewProvider {
    static var previews: some View {
        signUp().environmentObject(Inv())
    }
}
