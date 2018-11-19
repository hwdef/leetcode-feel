Solution {
    Library
}

islandPerimeter (grid:[][]i32)->(v:i32) {
    ? grid.count == 0 {
        <- (0)
    }
    count := 0
    repeat := 0
    [0<grid.count].@ i {
        [0<grid.[i].count].@ j {
            ? grid.[i].[j] == 1 {
                count += 1
                ? i ~= 0 & grid.[i-1].[j] == 1 {
                    repeat += 1
                }
                ? j ~= 0 & grid.[i].[j-1] == 1 {
                    repeat += 1
                }
            }
        }
    }
    <- (count * 4 - repeat * 2)
}