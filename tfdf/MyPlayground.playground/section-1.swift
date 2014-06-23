// Playground - noun: a place where people can play

import Foundation



var directoryPath  = "/Users/JeffH/Desktop/test"

let fileManager   : NSFileManager = NSFileManager.defaultManager()

let success = fileManager.fileExistsAtPath(directoryPath)

if success {
    var result = "Hello, \(directoryPath)"
}




/*

// var directoryEnumList : NSDirectoryEnumerator = NSDirectoryEnumerator( enumeratorAtPath: directoryPath )

var error : NSError = NSError()

var dirList = String[]()

//dirlist = fileManager.contentsOfDirectoryAtPath(directoryPath, error)


directoryEnumList = fileManager.enumeratorAtPath(directoryPath)
directoryEnumList.skipDescendants()

var currFile : NSDictionary = NSDictionary()

// var filecount :String = directoryEnumList.valueForKey(1)

*/




