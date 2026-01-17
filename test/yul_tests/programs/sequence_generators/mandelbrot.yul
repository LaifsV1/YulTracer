{
    // Entry point for the Yul program
    function main() {
        // Define parameters for the Mandelbrot set
        let scale := shl(16, 1) // 1 << 16
        let x_min := sub(0, mul(25, div(scale,10))) // -2.5 * scale (represented as 2's complement)
        let x_max := mul(1, scale) // 1.0 * scale
        let y_min := sub(0, scale) // -1.0 * scale
        let y_max := scale // 1.0 * scale
        let x_steps := 200
        let y_steps := 200
        let max_iterations := 15

        // Calculate step sizes for the grid
        let x_step_size := div(sub(x_max, x_min), x_steps)
        let y_step_size := div(sub(y_max, y_min), y_steps)

        // Loop through the grid of points
        let j := 0
        for { } lt(j, y_steps) { j := add(j, 1) } {
            let cy := add(y_min, mul(j, y_step_size))
            let i := 0
            for { } lt(i, x_steps) { i := add(i, 1) } {
                let cx := add(x_min, mul(i, x_step_size))

                // Initialize zx and zy to 0 (fixed-point arithmetic)
                let zx := 0
                let zy := 0
                let iterations := 0
                // Iterative loop to compute Mandelbrot escape
                for { } and(lt(iterations, max_iterations), lt(add(mul(zx, zx), mul(zy, zy)), mul(4, mul(scale, scale)))) { iterations := add(iterations, 1) } {
                    
                    let zx_new := add(sdiv(sub(mul(zx, zx), mul(zy, zy)), scale), cx)
                    let zy_new := add(sdiv(mul(2, mul(zx, zy)), scale), cy)
                    zx := zx_new
                    zy := zy_new


                }

                // Print the iteration count for the current point
                PRINT(iterations)
            }
        }
    }

    main()
}
