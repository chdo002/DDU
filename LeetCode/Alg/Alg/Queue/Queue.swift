//
//  Queue.swift
//  Alg
//
//  Created by chdo on 2021/6/5.
//

import Foundation

//https://leetcode-cn.com/leetbook/read/queue-stack/xkrhpg/

func Queue() {
    
    //    https://leetcode-cn.com/leetbook/read/queue-stack/kzlb5/
    //    设计循环队列s
    
    class MyCircularQueue {
        private var queue: [Int]
        private var capacity: Int           // 队列的总容量
        private var headIndex: Int = 0      // 队头索引
        private var count: Int = 0          // 队列元素数量
        
        init(_ k: Int) {
            capacity = k
            queue = [Int](repeating: -1, count: capacity)
        }
        
        func enQueue(_ value: Int) -> Bool {
            if isFull() { return false }
            
            let tailIndex = (headIndex + count) % capacity
            queue[tailIndex] = value
            count += 1
            return true
        }
        
        func deQueue() -> Bool {
            if isEmpty() { return false }
            
            headIndex = (headIndex + 1) % capacity
            count -= 1
            return true
        }
        
        func Front() -> Int {
            if isEmpty() { return -1 }
            return queue[headIndex]
        }
        
        func Rear() -> Int {
            if isEmpty() { return -1 }
            return queue[(headIndex + count - 1) % capacity]
        }
        
        func isEmpty() -> Bool {
            return count == 0
        }
        
        func isFull() -> Bool {
            return count == capacity
        }
    }
    
    //    MyCircularQueue circularQueue = new MyCircularQueue(3); // 设置长度为 3
    //    circularQueue.enQueue(1);  // 返回 true
    //    circularQueue.enQueue(2);  // 返回 true
    //    circularQueue.enQueue(3);  // 返回 true
    //    circularQueue.enQueue(4);  // 返回 false，队列已满
    //    circularQueue.Rear();  // 返回 3
    //    circularQueue.isFull();  // 返回 true
    //    circularQueue.deQueue();  // 返回 true
    //    circularQueue.enQueue(4);  // 返回 true
    //    circularQueue.Rear();  // 返回 4
    
    /*
    ["MyCircularQueue","enQueue","Rear","Rear","deQueue","enQueue","Rear","deQueue","Front","deQueue","deQueue","deQueue"]
    [   [6],            [6],       []   ,   [],     [],     [5],    [],       [],      [],      [],      [],       []]
 
     输出：
     [null,true,6,6,true,true,5,true,0,false,false,false]
     预期结果：
     [null,true,6,6,true,true,5,true,-1,false,false,false]
     
     
     
     ["MyCircularQueue","enQueue","Front","isFull","enQueue","enQueue","enQueue","deQueue","enQueue","enQueue","isEmpty","Rear"]
             [[4],           [3],   [],     [],      [7],       [2],     [5],      [],        [4],      [2],     [],        []]
     输出：
     [null,true,3,false,true,true,true,true,true,true,false,4]
     预期结果：
     [null,true,3,false,true,true,true,true,true,false,false,4]
     
     
     输入：
     ["MyCircularQueue","enQueue","isEmpty","enQueue","enQueue","Rear","enQueue","enQueue","Rear","Rear","deQueue","enQueue"]
     [              [5],     [6]    ,[],       [1],       [2],   [],        [7],   [7],      [],    [],      [],     [5]]
     输出：
     [null,true,true,true,true,2,true,true,7,7,true,true]
     预期结果：
     [null,true,false,true,true,2,true,true,7,7,true,true]
 */
    
//    let circularQueue = MyCircularQueue(1)
//    circularQueue.enQueue(1)
//    circularQueue.enQueue(2)
//    circularQueue.isFull()
//    circularQueue.enQueue(2)
//    circularQueue.enQueue(7)
//    circularQueue.enQueue(7)
//    circularQueue.deQueue()
//    circularQueue.enQueue(5)
}
