//
//  DFS.swift
//  Alg
//
//  Created by chdo on 2021/6/13.
//

import Foundation

//搜索思想——DFS & BFS（基础基础篇）
//https://zhuanlan.zhihu.com/p/24986203

//int BFS(Node root, Node target) {
//    Queue<Node> queue;  // store all nodes which are waiting to be processed
//    int step = 0;       // number of steps neeeded from root to current node
//    // initialize
//    add root to queue;
//    // BFS
//    while (queue is not empty) {
//        step = step + 1;
//        // iterate the nodes which are already in the queue
//        int size = queue.size();
//        for (int i = 0; i < size; ++i) {
//            Node cur = the first node in queue;
//            return step if cur is target;
//            for (Node next : the neighbors of cur) {
//                add next to queue;
//            }
//            remove the first node from queue;
//        }
//    }
//    return -1;          // there is no path from root to target
//}


// https://leetcode-cn.com/leetbook/read/queue-stack/kc5ge/


