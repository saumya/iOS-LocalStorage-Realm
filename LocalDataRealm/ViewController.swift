//
//  ViewController.swift
//  LocalDataRealm
//
//  Created by Pivotal on 6/22/16.
//  Copyright © 2016 pivotaldesign.biz. All rights reserved.
//

import UIKit

import SwiftyJSON
import RealmSwift


class ViewController: UIViewController {
    
    // Get the default Realm
    private var realm:Realm = try! Realm()
    // You only need to do this once (per thread)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("ViewController : viewDidLoad")
        
        // Get the default Realm
        //self.realm = try! Realm()
        // You only need to do this once (per thread)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSave(sender:AnyObject){
        saveData()
    }
    @IBAction func onGet(sender:AnyObject){
        getData()
    }
    
    private func saveData(){
        // Create a Person object
        let author = Person()
        author.name = "David Foster Wallace"
        
        
        
        // Add to the Realm inside a transaction
        try! realm.write {
            realm.add(author)
        }
        
        // Update an object with a transaction
        try! realm.write {
            author.name = "Thomas Pynchon"
        }
    }
    
    private func getData(){
        //let dogs = realm.objects(Dog.self) // retrieves all Dogs from the default Realm
        let author = realm.objects(Person.self)
        print(author)
    }


}

// Dog model
class Dog: Object {
    dynamic var name = ""
    dynamic var owner: Person? // Properties can be optional
}

// Person model
class Person: Object {
    dynamic var name = ""
    dynamic var birthdate = NSDate(timeIntervalSince1970: 1)
    let dogs = List<Dog>()
}

