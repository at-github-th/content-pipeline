
const std = @import("std");
pub fn main() !void {
    var listener = try std.net.Address.parseIp4("127.0.0.1", 5109);
    var server = try std.net.tcpListen(listener);
    defer server.deinit();
    while (true) {
        var conn = try server.accept();
        _ = try conn.writer().writeAll("HTTP/1.1 200 OK\r\nContent-Type: application/json\r\n\r\n{\"name\":\"Content Pipeline (uploads → transforms → CDN) API\",\"ok\":true}");
        conn.deinit();
    }
}
