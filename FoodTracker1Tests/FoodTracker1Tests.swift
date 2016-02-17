//
//  FoodTracker1Tests.swift
//  FoodTracker1Tests
//
//  Created by Kerry Toonen on 2016-02-15.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//
import UIKit
import XCTest
@testable import FoodTracker1

class FoodTracker1Tests: XCTestCase {
    

    // MARK: FoodTrackerTests
    
    //Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    
    func testMealInitialization() {
        
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        
        XCTAssertNotNil(potentialItem)
        
        
        
        //Failure cases.
        
        let noName = Meal(name: "", photo: nil, rating: 0)
        
        XCTAssertNil(noName, "Empty name is invalid")
        
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        
        
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")

        
    }


}


