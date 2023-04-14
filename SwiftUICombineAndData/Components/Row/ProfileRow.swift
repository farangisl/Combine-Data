//
//  ProfileRow.swift
//  SwiftUICombineAndData
//
//  Created by Махмадёрова Фарангис Шухратовна on 14.04.2023.
//

import SwiftUI

struct ProfileRow: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16.0) {
            profilePicture
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Farangis")
                    .font(.title2)
                    .fontWeight(.bold)
                    .lineLimit(1)
                    .foregroundColor(.white)
                Text("View Sertificates")
                    .font(.footnote)
                    .foregroundColor(.white.opacity(0.7))
            }
            
            Spacer()
            
            glowIcon
        }
        .blurBackground()
    }
    
    var profilePicture: some View {
        ZStack {
            Image(systemName: "circle.fill")
                .resizable()
                .font(.system(size: 66))
                .angularGradientGlow(colors: [Color(#colorLiteral(red: 1, green: 0.9227931499, blue: 0.2488974929, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.3070181906, blue: 0.3424727619, alpha: 1)), Color(#colorLiteral(red: 0.2881842256, green: 0.5022485852, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.21752882, green: 0.9836290479, blue: 0.6851486564, alpha: 1)), ])
                .frame(width: 66, height: 66)
                .blur(radius: 10)
            
            VStack {
                Image("Profile")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 66, height: 66, alignment: .center)
                    .cornerRadius(50)
            }
            .overlay(Circle().stroke(.white, lineWidth: 1.0))
        }
    }
    
    var glowIcon: some View {
        ZStack {
            AngularGradient(colors: [Color(#colorLiteral(red: 0.4690850973, green: 0.6130465269, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.3528380692, blue: 0.3850349784, alpha: 1)), Color(#colorLiteral(red: 0.4802584052, green: 0.9869193435, blue: 0.7743139863, alpha: 1)), Color(#colorLiteral(red: 0.1222173646, green: 0.9226282835, blue: 1, alpha: 1)), ], center: .center, startAngle: .degrees(-190), endAngle: .degrees(155))
                .blur(radius: 8)
                .shadow(radius: 30)
                .frame(width: 36, height: 36)
            
            Image(systemName: "square.stack.fill")
                .linearGradientBackground(colors: [Color(#colorLiteral(red: 0.6196078431, green: 0.6784313725, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 0.5607843137, blue: 0.9803921569, alpha: 1))])
                .frame(width: 36, height: 36)
                .background(Color(#colorLiteral(red: 0.1019607843, green: 0.07058823529, blue: 0.2431372549, alpha: 0.8)))
                .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 12, style: .continuous).stroke(.white.opacity(0.7), lineWidth: 1.0).blendMode(.overlay))
        }
    }
    
    
}

struct ProfileRow_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRow()
    }
}
