//
//  Block.swift
//  iosTris
//
//  Created by Joshua Beard on 1/2/18.
//  Copyright © 2018 Joshua Beard. All rights reserved.
//

import SpriteKit

class Block: Hashable, CustomStringConvertible {
    let color: BlockColor
    
    var column: Int
    var row: Int
    var sprite: SKSpriteNode?
    
    var spriteName: String {
        return color.spriteName
    }
    
    var hashValue: Int {
        return self.column ^ self.row
    }
    
    var description: String {
        return "\(color): [\(column), \(row)]"
    }
    
    init(column: Int, row: Int, color: BlockColor) {
        self.column = column
        self.row = row
        self.color = color
    }
}

func == (lhs: Block, rhs: Block) -> Bool {
    return lhs.row == rhs.row && lhs.column == rhs.column && lhs.color.rawValue == rhs.color.rawValue
}

