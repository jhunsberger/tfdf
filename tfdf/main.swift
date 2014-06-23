//
//  main.swift
//  tfdf
//
//  Created by Jeff Hunsberger on 6/5/14.
//  Copyright (c) 2014 Gravity Well Apps. All rights reserved.
//

import Foundation

var directoryName : String




// tfdf - text file date formatter
//
// Read in a directory name from the command line
// Index the files in the directory
// Loop through the files
// For each file, check the file name
// Find a date in it
// Check its format
// If in the wrong format
//      Save the currently formatted title string
//      Extract the string into parts
//      Create a new version of the date based on the old date
//      Find the spot in the file name where the old date was
//      Insert the new date in the file name string
//      Rename the file and save



import Foundation

var directoryPath  = "/Users/JeffH/Desktop/test"

let fileManager   : NSFileManager = NSFileManager.defaultManager()

let success = fileManager.fileExistsAtPath(directoryPath)

if success {
    var result = "Hello, \(directoryPath)"
}

var samplefiles = String[]()
var fixedFiles  = String[]()

samplefiles.append("20141111 1423 Test File names.txt")
samplefiles.append("20141211 No Time Test File.txt")
samplefiles.append("2014-03-14 brewx test file.txt")

for file in samplefiles {
    
    if file.sub(1, length:4) != "" {
        if file.sub(4, length:1) != "-" {
            var dateToChange = ""
            var year = ""
            var month = ""
            var day = ""
            
            year    = file.sub(0, length: 4)
            month   = file.sub(4, length:2)
            day     = file.sub(6, length:2)
            
            var restOfTheFileName = file.rest(9)
            
            fixedFiles.append("\(year)-\(month)-\(day) \(restOfTheFileName)")
      
        }
    }
    
}





