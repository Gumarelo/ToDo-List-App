//
//  Task.swift
//  ToDo
//
//  Created by Jorge Casariego on 15/6/15.
//  Copyright (c) 2015 Jorge Casariego. All rights reserved.
//

import UIKit

var taskManager: TaskManager = TaskManager()

struct task {
    var name = "Un-Named"
    var descripction = "Un-Description"
}

class TaskManager: NSObject {
    
    var tasks = [task]()
    
    func addTask(name:String, descripction:String){
        tasks.append(task(name: name, descripction: descripction))
    }
   
}
