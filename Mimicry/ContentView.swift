//
//  ContentView.swift
//  Mimicry
//
//  Created by Denis Evdokimov on 12/19/23.
//

import SwiftUI

struct ContentView: View {
    @State var expand: Bool = false
    @Namespace var animation
    
    var body: some View {
        if expand {
            ZStack {
                Button { withAnimation {expand.toggle()}
                } label: {
                    HStack{
                        Image(systemName: "arrowshape.backward.fill")
                        Text("Back")
                    }
                    .foregroundStyle(.white)
                    .frame(width: 100, height: 42, alignment: .leading)
                    .padding()
                    .matchedGeometryEffect(id: "text", in: animation)
                }
            }
            .frame(width: 325, height: 370, alignment: .topLeading)
            .background(alignment: .center) {
                Color.blue.cornerRadius(10)
                    .matchedGeometryEffect(id: "background", in: animation)
            }
        } else {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button { withAnimation {expand.toggle()}
                    } label: {
                        Text("Open")
                            .foregroundStyle(.white)
                            .frame(width: 100, height: 42)
                            .matchedGeometryEffect(id: "text", in: animation)
                            .background(alignment: .center) {
                                Color.blue.cornerRadius(10)
                                    .matchedGeometryEffect(id: "background", in: animation)
                            }
                        
                    }
                    
                }
                .safeAreaPadding()
            }
        }
    }
}

#Preview {
    ContentView()
}
