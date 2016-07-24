import Quicksort
import Foundation

print("Please input the array as a CSV")
let csv = readLine(strippingNewline: true)
guard let input = csv, !input.isEmpty else { exit(42) }
var inputArray: [Int] = input.components(separatedBy: ",").map {
  guard let casted = Int($0) else { exit(42) }
  return casted
}
print("Input read: \(inputArray)")

let sorted = Quicksort.sort(array: &inputArray)
print("Sorted: \(sorted)")
