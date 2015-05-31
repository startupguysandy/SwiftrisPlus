//
//  Array2D.swift
//  Swiftris
//
//  Created by Andrew Bradbury on 28/05/2015.
//  Copyright (c) 2015 Tin Bear Studios. All rights reserved.
//

class Array2D<T> {
    let columns: Int
    let rows: Int
    
    /*
       Using T allows our array to store any type of data, keeping this ready to accept any data.
       The ? states that the value is optional and we don't need this, it could even be nil.
       We're using empty blocks in our game where there's no block present.
    */
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(count:rows * columns, repeatedValue: nil)
    }
    
    /*
        Subscipts allow us to access information in an array or dictionary quickly.
        The -> says we're going to return a type, optionally.
    */
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}
