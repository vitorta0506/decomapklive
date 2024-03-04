.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/o0;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;
.source "SourceFile"


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/l0;Lkg/k;Ljava/lang/String;IZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k1;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;Lkg/k;Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->o(Lio/grpc/netty/shaded/io/netty/util/s;)V

    return-void
.end method
