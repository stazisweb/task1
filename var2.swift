var matrix = [[1, 2, 3], [2, 4, -1], [5, 2, 0]]
let matrixLength = matrix.count - 1
var currentLength = 0
var tmpArray = [Int]()
var sumCurrent = 0
var sumPrevious = 0
for _ in 0...matrixLength {
	for i in 0...matrixLength {
		currentLength = matrix[i].count - 1
		sumCurrent = 0;
		for j in 0...currentLength {
			if j % 2 == 0 {
				sumCurrent += matrix[i][j]
			}
		}
		if i > 0 && sumCurrent < sumPrevious {
			tmpArray = matrix[i]
			matrix[i] = matrix[i - 1]
			matrix[i - 1] = tmpArray
		}
		sumPrevious = sumCurrent
	}
}

for i in 0...matrixLength {
	print(matrix[i])
}
