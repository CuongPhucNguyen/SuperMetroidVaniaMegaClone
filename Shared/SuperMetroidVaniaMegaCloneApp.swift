//
//  SuperMetroidVaniaMegaCloneApp.swift
//  Shared
//
//  Created by Cuong Nguyen Phuc on 05/08/2022.
//

import SwiftUI

@main
struct SuperMetroidVaniaMegaCloneApp: App {
    
    var body: some Scene {
        WindowGroup {
            Group{
                Player(player: PlayerObject.init(positionX: 0.0, positionY: 0.0))
            }
        }
        
    }
}
