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

    var dateVar:Array<AnyObject>=[]
    override func viewDidLoad() {
        super.viewDidLoad()
        print("11111");
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        let row:AnyObject = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context);
        row.setValue("shujuku1", forKey: "name");
        row.setValue(1, forKey: "age");
        do {
            try
                context.save();
            print("保存成功！");
                //dateVar=context.executeFetchRequest(f);
        } catch {
            fatalError("不能保存：\(error)")
        }
        print("run here");
        
        
        let f = NSFetchRequest(entityName: "Users");
        do {
            try dateVar=context.executeFetchRequest(f);
            
        }catch {
            fatalError("错误：\(error)")
        }
        let name = dateVar[1].valueForKey("name");
        let age  = dateVar[1].valueForKey("age");
        print("\(name?.name)");
        print("\(age)");
        //var response:String="";
        //var dict = response.responseObject as Dictionary<String,AnyObject>;
        //print("运行到这里");
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

