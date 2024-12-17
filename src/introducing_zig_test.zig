const std = @import("std");

test "expect addOne adds one to 41" {
    std.debug.print("debug message\n", .{});
    std.log.info("\ninfo message\n", .{});
    // std.log.err("err log", .{});

    // The Standard Library contains useful functions to help create tests.
    // `expect` is a function that verifies its argument is true.
    // It will return an error if its argument is false to indicate a failure.
    // `try` is used to return an error to the test runner to notify it that the test failed.

    const value: i32 = addOne(41);
    try std.testing.expect(value == 42);
}

test "true true" {
    // std.log.err("123", .{});
    try std.testing.expect(true);
}

test "true false" {
    try std.testing.expect(true);
}

test {
    // it's a empty test
}

fn addOne(number: i32) i32 {
    return number + 1;
}