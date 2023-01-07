const std = @import("std");

const Point = struct {
    x: f32,
    y: f32,

    fn init(x: f32, y: f32) Point {
        return .{.x = x, .y = y};
    }

    fn showPosition(self: *const Point) void {
        std.debug.print("x = {d}, y = {d}\n", .{self.y, self.y});
    }
};

pub fn main() !void {
    var a: i32 = 13;
    std.debug.print("the value a = {}\n", .{a});

    var name: []const u8 = "123";
    std.debug.print("name = {s}\n", .{name});

    var b: i32 = 13;
    std.debug.print("the value b = {}\n", .{b});

    var sex: bool = true;
    std.debug.print("is main = {}\n", .{sex});

    const p = Point.init(100, 100);
    p.showPosition();
}
