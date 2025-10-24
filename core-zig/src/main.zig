const std = @import("std");
pub fn main() !void { try std.io.getStdOut().writer().print("Core (Zig)\n", .{}); }
