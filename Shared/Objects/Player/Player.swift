//
//  Player.swift
//  SuperMetroidVaniaMegaClone (iOS)
//
//  Created by Cuong Nguyen Phuc on 05/08/2022.
//

import Foundation
import SwiftUI

struct Player: View {
    @State var currentPosition: PlayerObject = PlayerObject.init(positionX: 0.0, positionY: 0.0)
    
    @State var inputPosition: PlayerObject
    @State var changePosition: Double = 20
    var body: some View{
        Group{
            Button(){
                inputPosition.positionY += changePosition
            } label: {
                Rectangle()
                    .frame(width: 40, height: 40)
                    .offset(x: currentPosition.positionX,y: currentPosition.positionY)
            }
            
        }
        .onAppear{
            if (!PlayerObject.equal(player1: currentPosition, player2: inputPosition)){
                withAnimation(Animation.default){
                    currentPosition.positionX = inputPosition.positionX
                    currentPosition.positionY = inputPosition.positionY
                }
            }
        }
    }
    
    init(player: PlayerObject){
        self.inputPosition = player
    }
    func nextPosition(player: PlayerObject){
        self.inputPosition = player
    }
    
}


struct playerPreview: PreviewProvider{
    static var previews: some View{
        Player(player: PlayerObject.init(positionX: 0.0, positionY: 0.0))
    }
}
