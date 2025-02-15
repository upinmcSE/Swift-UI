//
//  ContentView.swift
//  SwiftUI_106
//
//  Created by Dương Trung Thành on 14/2/25.
//

import SwiftUI

struct Player: Identifiable {
    let id = UUID()


    var name: String
    var score: Int
}

struct ContentView: View {
    @State private var players: [Player] = [
        Player(name: "Elisha", score: 0),
        Player(name: "Andre", score: 0),
        Player(name: "Jasmine", score: 0),
    ]


    var body: some View {
        VStack(alignment: .leading) {
            Text("Score Keeper")
                .font(.title)
                .bold()
                .padding(.bottom)


            Grid {
                GridRow {
                    Text("Player")
                    Text("Score")
                }
                .font(.headline)


                ForEach($players) { $player in
                    GridRow {
                        TextField("Name", text: $player.name)
                        Text("\(player.score)")
                        Stepper("\(player.score)", value: $player.score)
                            .labelsHidden()
                    }
                }
            }
            Button("Add Player", systemImage: "plus") {
                players.append(Player(name: "", score: 0))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
