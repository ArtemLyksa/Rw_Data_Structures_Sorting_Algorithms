/// Copyright (c) 2019 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.


//Bubble Sort
func bubbleSort<Element: Comparable>(_ array: inout [Element]) {
    // There is no need to sort the collection if it has less than two elements.
    guard array.count >= 2 else {
        return
    }
    // A single-pass bubbles the largest value to the end of the collection. Every pass needs to compare one less value than in the previous pass, so you essentially shorten the array by one with each pass.
    for end in (1..<array.count).reversed() {
        var swapped = false
        // This loop performs a single pass; it compares adjacent values and swaps them if needed.
        for current in 0..<end {
            if array[current] > array[current + 1] {
                array.swapAt(current, current + 1)
                swapped = true
            }
        }
        //If no values were swapped this pass, the collection must be sorted, and you can exit early.
        if !swapped {
            return
        }
    }
}

func selectionSort<Element: Comparable>(_ array: inout [Element]) {
    // There is no need to sort the collection if it has less than two elements.
    guard array.count >= 2 else { return }
    
    for current in 0..<array.count - 1 {
        
        var lowest = current
        
        for other in current + 1..<array.count {
            if array[lowest] > array[other] {
                lowest = other
            }
        }
        if lowest != current {
            array.swapAt(lowest, current)
        }
    }
}

func insertionSort<Element: Comparable>(_ array: inout [Element]) {
    // There is no need to sort the collection if it has less than two elements.
    guard array.count >= 2 else { return }
    
    for current in 1..<array.count {
        
        for shifting in (1...current).reversed() {
            if array[shifting] < array[shifting-1] {
                array.swapAt(shifting, shifting-1)
            } else {
                break
            }
        }
        
    }
}

