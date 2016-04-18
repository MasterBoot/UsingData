//
//  ViewController.swift
//  UsingData
//
//  Created by MasterBoot on 16/4/18.
//  Copyright © 2016年 MasterBoot. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        let row:AnyObject = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context);
        row.setValue("shujuku1", forKey: "name");
        row.setValue(1, forKey: "age");
        
        do {
            try context.save()
            print("保存成功！")
        } catch {
            fatalError("不能保存：\(error)")
        }
        print("run here");
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

