//
//  MJNavigationController.swift
//  MJWeiBo
//
//  Created by YXCZ on 16/12/16.
//  Copyright © 2016年 林民敬. All rights reserved.
//

import UIKit

class MJNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavColor()
    }
    
    
    //重写 push 方法
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        //不是栈底控制器才需要隐藏，根控制器不需要处理
        if childViewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            
            if let vc = viewController as? MJBaseViewController {
                
                let title = "返回"
                
                vc.navigationItem.leftBarButtonItem = UIBarButtonItem(title: title, target: self, action: #selector(popToParent),isBack:true)
            }
        
        }
        
        super.pushViewController(viewController, animated: true)
    }
    
    func popToParent(){
        popViewController(animated: true)
    }
    
}

// MARK: - 设置界面
extension MJNavigationController{
    
    func setNavColor() {
        //设置 navBar 的渲染颜色
        navigationBar.barTintColor = UIColor.cz_color(withHex: 0xF6F6F6)
        //设置 navBar 的字体颜色
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.darkGray]
    }
    
}
