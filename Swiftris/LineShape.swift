//
//  LineShape.swift
//  Swiftris
//
//  Created by Andrew Bradbury on 30/05/2015.
//  Copyright (c) 2015 Tin Bear Studios. All rights reserved.
//

class LineShape: Shape {
    /*
        These hinge around the 2nd block
    
        Orientations 0 and 180
    
              |  0* |
              |  1  |
              |  2  |
              |  3  |
    
        Orientations 90 and 270
    
        |  0  |  1* |  2  |  3  |
    
        * Marks the row/column indicator for the shape
    */
    
    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero:
                [(0, 0), (0, 1), (0, 2), (0, 3)],
            Orientation.Ninety:
                [(-1, 0), (0, 0), (1, 0), (2, 0)],
            Orientation.OneEighty:
                [(0, 0), (0, 1), (0, 2), (0, 3)],
            Orientation.TwoSeventy:
                [(-1, 0), (0, 0), (1, 0), (2, 0)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero:
                [blocks[FourthBlockIdx]],
            Orientation.Ninety:
                blocks,
            Orientation.OneEighty:
                [blocks[FourthBlockIdx]],
            Orientation.TwoSeventy:
                blocks
        ]
    }
}