//
//  StringExtend.swift
//  tfdf
//
//  Created by Jeff Hunsberger on 6/9/14.
//  Copyright (c) 2014 Gravity Well Apps. All rights reserved.
//

import Foundation
import Cocoa

// from http://stackoverflow.com/questions/24044851/how-do-you-use-string-substringwithrange-or-how-do-ranges-work-in-swift
extension String{
    func sub(start: Int, length: Int) -> String {
        assert(start >= 0, "Cannot extract from a negative starting index")
        assert(length >= 0, "Cannot extract a negative length string")
        assert(start <= countElements(self) - 1, "cannot start beyond the end")
        assert(start + length <= countElements(self), "substring goes past the end of the original")
        var a = self.substringFromIndex(start)
        var b = a.substringToIndex(length)
        return b
    }
}

extension String{
    func rest(start: Int) -> String {
        assert(start >= 0, "Cannot extract from a negative starting index")
        assert(start <= countElements(self) - 1, "cannot start beyond the end")
        var a = self.substringFromIndex(start)
        var b = a.substringToIndex(countElements(self)-1)
        return b
    }
}


extension String{
    func findFirstIndex(locator:NSString) -> Int {
        return self.bridgeToObjectiveC().rangeOfString(locator).location
    }
}
