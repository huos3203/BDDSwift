//
//  LoadStoryBoardSpec.swift
//  BDDExamplesSwift
//
//  Created by Xcode Server on 2017/4/28.
//  Copyright © 2017年 huoshuguang. All rights reserved.
//

import Quick
import Nimble

//f辅助方法
import KPAStoryboardConvenience
import KPAViewControllerTestHelper


@testable import BDDExamplesSwift


class LoadStoryBoardSpec: QuickSpec
{
    override func spec()
    {
        describe("加载storyboard") {
            
            var viewController:SignInViewController?
            beforeEach {
                UIStoryboard.setMainStoryboardName("Main")
                viewController = UIStoryboard.main().instantiateViewController(for: SignInViewController.self) as? SignInViewController
            }
            
            afterEach {
                viewController = nil
            }
            
            it("点击image", closure: { 
                //
                _ = viewController?.view
                viewController?.ibaTapImage("")
                expect(viewController?.ibPasswordField.text).to(equal("huosh"))
            })
            
            
        }
        
    }
}
