.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http/g0;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;
.source "SourceFile"


# static fields
.field private static final A:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    const/16 v1, 0x3e7

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g0;->A:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;-><init>(IIIZZ)V

    return-void
.end method


# virtual methods
.method protected P()Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;
    .locals 4

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g0;->A:Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    iget-boolean v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->o:Z

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Z)V

    return-object v0
.end method

.method protected Q([Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;
    .locals 4

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 2
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->h(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object p1, p1, v3

    invoke-static {v2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->g(ILjava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object p1

    iget-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->o:Z

    invoke-direct {v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;Z)V

    return-object v0
.end method

.method protected e0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
