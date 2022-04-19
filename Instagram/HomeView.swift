//
//  HomeView.swift
//  Instagram
//
//  Created by mustafa sabahy on 29/01/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
                     
            
        VStack(spacing : 0.0){
                header()
    
            ScrollView(.vertical,showsIndicators: false){
                
                stories()
          Divider()

                  fullpost()
     fullpost(image: "2", descreption: "Hello World")
                      
            }
   tabs()
            
//            Spacer()
        }
        }
        }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}


struct header :View{
    
    var body: some View{
        
        HStack{
            Image("logo")
            Spacer()
            HStack(spacing: 20){
                
                Image("add")
                Image( "heart")
                Image("messenger")
            }
        }
        .padding(.horizontal,15)
        .padding(.vertical,3)
       //    Spacer()
    }
}



struct story :View{
    var image: String = "loly"
    var name: String = "lurdiana"
    
    var body: some View{
        
        VStack{
            VStack{
                
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
                
            }
            .overlay(Circle()
.stroke(LinearGradient(colors: [.red,.purple,.red,.orange,
                                .yellow,.orange]
    , startPoint: .topLeading, endPoint: .bottomTrailing)
             , lineWidth: 2.3).frame(width: 68, height: 68))
            .frame(width: 70, height: 70)
            Text(name).font(.caption)
            
            
        }
    }
}


struct stories : View{
    var body: some View{
        ScrollView(.horizontal,showsIndicators: false){
            HStack (spacing : 15.0){
                story()
            story(image: "jemy", name: "Jemy")
                story(image: "2", name: "pop")
                story(image: "3", name: "Lily Hany")
                story(image: "4", name: "Jemy")
                story(image: "5", name: "Pop")
                
            }.padding(.horizontal,8)
            
        }.padding(.vertical,10)
    }
}


struct postheader : View{
    var body: some View{
        
        
        
        HStack{
            
            Image("loly")
                .resizable()
                .frame(width: 30, height: 30)
                .cornerRadius(50)
            
            Text("Lurdiana")
                .font(.caption).fontWeight(.bold)
            Spacer()
            Image("more")
        }.padding(.vertical,10)
            .padding(.horizontal,8 )
    }
}


struct post : View{
    var image : String = "loly2"
    var body: some View{
        
        VStack(spacing: 0.0){
            
            Image(image).resizable()
                .frame(width: .infinity)
                .aspectRatio( contentMode: .fit)
            
            HStack{
                HStack(spacing: 10.0){
                    Image("heart")
                    Image("comment")
                    Image("share")
                }
                Spacer()
                Image("bookmark")
            }.padding(.horizontal,12)
                .padding(.vertical,9)
        }
    }
}


struct fullpost : View{
    
    var image : String = "loly2"

    var descreption : String = "I miss traveling to Japan ♥️"
    var body: some View{
        VStack(alignment: .leading, spacing: 0.0){
            postheader()
              
         post(image: image)
Text("Liked by Mustafa sabahy and others").font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal,12)
        
            Text(descreption).font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal,12)
        
            HStack{
                HStack(spacing: 7.0){
                    Image("loly")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(50)
                    Text("Add comment...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
              Spacer()
                HStack{
                    Text("😍")
                    Text("😂")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                }
            }
            .padding(.horizontal,12)
            .padding(.vertical,9)
        }
    }
}


struct tabs : View{
    
    var body: some View{
        
        VStack(spacing: 0.0){
            Divider()
            HStack{
                
                Image("home")
                Spacer()
                Image("search")
                Spacer()
                Image("reels")
                Spacer()
                Image("shop")
                Spacer()
                Image("loly")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .cornerRadius(50)
            }.padding(.horizontal,25)
                .padding(.top,10)
        }
        
    }
}
