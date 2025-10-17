const std = @import("std");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();

    if (gpa.detectLeaks()) {
        return error.leaked_memory;
    }
}
