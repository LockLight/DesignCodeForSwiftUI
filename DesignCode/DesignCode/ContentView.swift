//
//  ContentView.swift
//  DesignCode
//
//  Created by locklight on 2020/7/28.
//  Copyright © 2020 LockLight. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        TitleView()
          .blur(radius: 20)
        
        BackCardView()
          .background(Color("card4"))
          .cornerRadius(10)
          .shadow(radius: 20)
          .offset(x: 0, y: -40)
          .scaleEffect(0.9)
          .rotationEffect(.degrees(10))
          .rotation3DEffect(Angle(degrees: 10
          ), axis: (x: 10, y: 0, z: 0))
          .blendMode(.hardLight)
        
        BackCardView()
          .background(Color("card3"))
          .cornerRadius(10)
          .shadow(radius: 20)
          .offset(x: 0, y: -20)
          .scaleEffect(0.95)
          .rotationEffect(Angle(degrees: 5))
          .rotation3DEffect(Angle(degrees: 5), axis: (x: 10, y: 0, z: 0))
          .blendMode(.hardLight)
        
        CardView()
          .blendMode(.hardLight)
        

        CardBottomView()
          .blur(radius: 20)
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
  var body: some View {
    VStack {
      HStack {
        VStack(alignment: .leading) {
          Text("UI Design")
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
          Text("Certificate")
            .foregroundColor(Color("accent"))
        }
        Spacer()
        Image("Logo1")
      }
      .padding(.horizontal,20)
      .padding(.top,20)
      Spacer()
      Image("Card1")
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 300, height: 110, alignment: .top)
    }
    .frame(width: 340, height: 220)
    .background(Color.black)
    .cornerRadius(20)
    .shadow(radius: 20)
  }
}

struct BackCardView: View {
  var body: some View {
    VStack {
      Spacer()
    }
    .frame(width: 340, height: 220.0)
  }
}

struct TitleView: View {
  var body: some View {
    VStack {
      HStack {
        Text("Certificates")
          .font(.largeTitle)
          .fontWeight(.bold)
          Spacer()
      }
      Image("Background1")
      Spacer()
    }
    .padding()
  }
}

struct CardBottomView: View {
  var body: some View {
    VStack {
      Rectangle()
        .frame(width: 40, height: 5)
        .cornerRadius(3)
        .opacity(0.1)
      Text("This certificate is proof that LockLight To has achieved the UI Design course with approval from a Design+Code Instructor")
        .multilineTextAlignment(.center)
        .font(.subheadline)
        .lineSpacing(4)
      Spacer()
    }
    .padding(.top,8)
    .padding(.horizontal,20)
    .frame(maxWidth:.infinity)
    .background(Color.white)
    .cornerRadius(30)
    .shadow(radius: 20)
    .offset(x: 0, y: 500)
  }
}
