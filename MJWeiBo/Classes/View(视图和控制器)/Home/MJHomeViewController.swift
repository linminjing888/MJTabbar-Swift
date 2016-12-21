//
//  MJHomeViewController.swift
//  MJWeiBo
//
//  Created by YXCZ on 16/12/16.
//  Copyright © 2016年 林民敬. All rights reserved.
//

import UIKit

class MJHomeViewController: MJBaseViewController {

    
    func showFriends() {
        print("friend")
        
        let vc = MJDemoViewController()
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

// MARK: - 设置界面
extension MJHomeViewController{
    //重写父类的方法
    override func setupUI() {
        super.setupUI()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title:"好友" , target: self, action: #selector(showFriends))
        
    }
}
