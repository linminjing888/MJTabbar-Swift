//
//  MJBaseViewController.swift
//  MJWeiBo
//
//  Created by YXCZ on 16/12/16.
//  Copyright © 2016年 林民敬. All rights reserved.
//

import UIKit

// Swift中，利用 extension 可以把“函数”按照功能分类管理，便于阅读和维护
//注意：
//1.extension 中不能有属性
//2.extension 中不能重写“父类”本类的方法；重写父类的方法是子类的职责，扩展是对类的扩展

// MARK: - 所有主控制器的基类控制器
class MJBaseViewController: UIViewController {

  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// MARK: - 设置界面
extension MJBaseViewController{
    
    func setupUI() {
        view.backgroundColor = UIColor.cz_random()
        
        //取消自动缩进 - 如果隐藏了导航栏，会缩进 20 个点
        automaticallyAdjustsScrollViewInsets = false
    
    }
    
}

