.class public final Lio/grpc/netty/shaded/io/netty/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:Ljava/nio/charset/Charset;

.field public static final d:Ljava/nio/charset/Charset;

.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:Ljava/nio/charset/Charset;

.field private static final g:[Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "UTF-16"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->a:Ljava/nio/charset/Charset;

    const-string v1, "UTF-16BE"

    .line 2
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/h;->b:Ljava/nio/charset/Charset;

    const-string v2, "UTF-16LE"

    .line 3
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    sput-object v2, Lio/grpc/netty/shaded/io/netty/util/h;->c:Ljava/nio/charset/Charset;

    const-string v3, "UTF-8"

    .line 4
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    sput-object v3, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    const-string v4, "ISO-8859-1"

    .line 5
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    sput-object v4, Lio/grpc/netty/shaded/io/netty/util/h;->e:Ljava/nio/charset/Charset;

    const-string v5, "US-ASCII"

    .line 6
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    sput-object v5, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/nio/charset/Charset;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    .line 7
    sput-object v6, Lio/grpc/netty/shaded/io/netty/util/h;->g:[Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;
    .locals 2

    const-string v0, "charset"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->e()Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->a()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/CharsetEncoder;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p0, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-object v1

    .line 5
    :cond_0
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-static {p0, v1, v1}, Lio/grpc/netty/shaded/io/netty/util/h;->b(Ljava/nio/charset/Charset;Ljava/nio/charset/CodingErrorAction;Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 6
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static b(Ljava/nio/charset/Charset;Ljava/nio/charset/CodingErrorAction;Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;
    .locals 1

    const-string v0, "charset"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-object p0
.end method
