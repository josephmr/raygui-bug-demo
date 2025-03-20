const rl = @import("raylib");
const rg = @import("raygui");

pub fn main() anyerror!void {
    // Initialization
    //--------------------------------------------------------------------------------------
    const screenWidth = 800;
    const screenHeight = 450;

    rl.initWindow(screenWidth, screenHeight, "raylib-zig [core] example - basic window");
    defer rl.closeWindow(); // Close window and OpenGL context

    rl.setTargetFPS(60); // Set our game to run at 60 frames-per-second
    //--------------------------------------------------------------------------------------

    while (!rl.windowShouldClose()) {
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(.white);

        _ = rg.guiPanel(rl.Rectangle{
            .x = 0,
            .y = 0,
            .width = 100,
            .height = 100,
        }, "foo");

        rl.drawRectangleRec(rl.Rectangle{
            .x = 100,
            .y = 100,
            .width = 100,
            .height = 100,
        }, rl.Color.black);
    }
}
