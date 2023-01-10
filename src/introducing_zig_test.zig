const std = @import("std");

// fn main() void {
//     std.debug.print("123", .{});
// }

test "expect addOne adds one to 41" {
    std.debug.print("hello world", .{});

    // The Standard Library contains useful functions to help create tests.
    // `expect` is a function that verifies its argument is true.
    // It will return an error if its argument is false to indicate a failure.
    // `try` is used to return an error to the test runner to notify it that the test failed.

    var value: i32 = addOne(41);

    try std.testing.expect(value == 42);
}

test "true = true" {
    try std.testing.expect(true);
}

/// The function `addOne` adds one to the number given as its argument.
fn addOne(number: i32) i32 {
    return number + 1;
}