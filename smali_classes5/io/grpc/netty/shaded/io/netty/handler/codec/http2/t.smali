.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:I

.field static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x3d

    new-array v0, v0, [Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    const-string v1, ":authority"

    .line 1
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ":method"

    const-string v2, "GET"

    .line 2
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "POST"

    .line 3
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, ":path"

    const-string v2, "/"

    .line 4
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "/index.html"

    .line 5
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, ":scheme"

    const-string v2, "http"

    .line 6
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "https"

    .line 7
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, ":status"

    const-string v2, "200"

    .line 8
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const-string v2, "204"

    .line 9
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const-string v2, "206"

    .line 10
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const-string v2, "304"

    .line 11
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v0, v3

    const-string v2, "400"

    .line 12
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v0, v3

    const-string v2, "404"

    .line 13
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v0, v3

    const-string v2, "500"

    .line 14
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "accept-charset"

    .line 15
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "accept-encoding"

    const-string v2, "gzip, deflate"

    .line 16
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "accept-language"

    .line 17
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "accept-ranges"

    .line 18
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "accept"

    .line 19
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "access-control-allow-origin"

    .line 20
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "age"

    .line 21
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "allow"

    .line 22
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "authorization"

    .line 23
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "cache-control"

    .line 24
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "content-disposition"

    .line 25
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "content-encoding"

    .line 26
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "content-language"

    .line 27
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "content-length"

    .line 28
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "content-location"

    .line 29
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "content-range"

    .line 30
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "content-type"

    .line 31
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "cookie"

    .line 32
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "date"

    .line 33
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "etag"

    .line 34
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "expect"

    .line 35
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "expires"

    .line 36
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "from"

    .line 37
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "host"

    .line 38
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "if-match"

    .line 39
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "if-modified-since"

    .line 40
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "if-none-match"

    .line 41
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "if-range"

    .line 42
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "if-unmodified-since"

    .line 43
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "last-modified"

    .line 44
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "link"

    .line 45
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "location"

    .line 46
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "max-forwards"

    .line 47
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "proxy-authenticate"

    .line 48
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "proxy-authorization"

    .line 49
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "range"

    .line 50
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "referer"

    .line 51
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "refresh"

    .line 52
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "retry-after"

    .line 53
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "server"

    .line 54
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "set-cookie"

    .line 55
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "strict-transport-security"

    .line 56
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "transfer-encoding"

    .line 57
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "user-agent"

    .line 58
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "vary"

    .line 59
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "via"

    .line 60
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "www-authenticate"

    .line 61
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 62
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->a:Ljava/util/List;

    .line 63
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a;

    .line 64
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->e()I

    move-result v1

    sput v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->c:I

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->d:I

    return-void
.end method

.method private static a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a;

    .line 3
    invoke-static {}, Lpg/n;->b()Lpg/n;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a;-><init>(ZLpg/o;I)V

    :goto_0
    if-lez v0, :cond_0

    .line 4
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->b(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v2

    .line 5
    iget-object v2, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a:Ljava/lang/CharSequence;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lpg/g;->M(Ljava/lang/Object;Ljava/lang/Object;)Lpg/i;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static b(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->a:Ljava/util/List;

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    return-object p0
.end method

.method static c(Ljava/lang/CharSequence;)I
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a;

    invoke-virtual {v0, p0}, Lpg/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4

    .line 1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->c(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->b(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v2

    .line 3
    iget-object v2, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->b:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 4
    sget v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->c:I

    if-gt v0, v2, :cond_3

    .line 5
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->b(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v2

    .line 6
    iget-object v3, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 7
    :cond_2
    iget-object v2, v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->b:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_3
    return v1
.end method

.method private static e()I
    .locals 5

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->b(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-lez v2, :cond_1

    .line 3
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t;->b(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    move-result-object v3

    .line 4
    iget-object v4, v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a:Ljava/lang/CharSequence;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;->a:Ljava/lang/CharSequence;

    invoke-static {v4, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move-object v1, v3

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;
    .locals 2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->g(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/c;->f:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-direct {v0, p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->g(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->g(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method
