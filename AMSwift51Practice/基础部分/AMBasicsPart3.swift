//
//  AMBasicsPart3.swift
//  AMSwift51Practice
//
//  Created by AndyMu on 2020/10/12.
//

import Foundation

class AMBasicsPart3: NSObject {
    func SetupTest() {
        Test()
    }
    ///-----------------------------元组-----------------------------///
    func Test() {
        // 元组（tuples）把多个值组合成一个复合值。元组内的值可以是任意类型，并不要求是相同类型。
        let http404Error = (404, "Not Found")
        // http404Error 的类型是 (Int, String)，值是 (404, "Not Found")
        
        // 你可以将一个元组的内容分解（decompose）成单独的常量和变量，然后你就可以正常使用它们了：
        let (statusCode, statusMessage) = http404Error
        print("The status code is \(statusCode)")
        // 输出“The status code is 404”
        print("The status message is \(statusMessage)")
        // 输出“The status message is Not Found”
        
        // 如果你只需要一部分元组值，分解的时候可以把要忽略的部分用下划线（_）标记：
        let (justTheStatusCode, _) = http404Error
        print("The status code is \(justTheStatusCode)")
        // 输出“The status code is 404”
        
        // 你还可以通过下标来访问元组中的单个元素，下标从零开始：
        print("The status code is \(http404Error.0)")
        // 输出“The status code is 404”
        print("The status message is \(http404Error.1)")
        // 输出“The status message is Not Found”
        
        // 你可以在定义元组的时候给单个元素命名：
        let http200Status = (statusCode: 200, description: "OK")
        // 给元组中的元素命名后，你可以通过名字来获取这些元素的值：
        print("The status code is \(http200Status.statusCode)")
        // 输出“The status code is 200”
        print("The status message is \(http200Status.description)")
        // 输出“The status message is OK”
    }
    
}
