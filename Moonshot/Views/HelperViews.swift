//
//  HelperViews.swift
//  Moonshot
//
//  Created by Anthy Chen on 5/31/23.
//

import SwiftUI

struct Divider: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

struct MissionViewHeaderTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.title.bold())
            .padding(.bottom, 5)
    }
}

struct CrewRosterView: View {
    let crew: [MissionView.CrewMember]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(crew, id: \.role) { crew in
                    NavigationLink {
                        AstronautView(astronaut: crew.astronaut)
                    } label: {
                        HStack {
                            Image(crew.astronaut.id)
                                .resizable()
                                .frame(width: 104, height: 72)
                                .clipShape(Capsule())
                                .overlay(
                                    Capsule()
                                        .strokeBorder(.white, lineWidth:  1)
                                )
                            
                            VStack(alignment: .leading) {
                                Text(crew.astronaut.name)
                                    .foregroundColor(.white)
                                    .font(.headline)
                                Text(crew.role)
                                    .foregroundColor((.secondary))
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct HelperViews_Previews: PreviewProvider {
    static var previews: some View {
        Divider()
        MissionViewHeaderTextView(text: "Text")
        CrewRosterView(crew: [])
    }
}
