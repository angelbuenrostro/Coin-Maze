//
//  ContentView.swift
//  Coin Maze
//
//  Created by Angel Buenrostro on 9/21/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            // 1366 x 1024 Ipad Pro Landscape Point Size
            .previewLayout(.fixed(width: 1366,
                                height: 1024))
    }
}
