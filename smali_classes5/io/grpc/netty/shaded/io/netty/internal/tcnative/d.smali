.class final Lio/grpc/netty/shaded/io/netty/internal/tcnative/d;
.super Lio/grpc/netty/shaded/io/netty/internal/tcnative/e;
.source "SourceFile"


# instance fields
.field private final i:I

.field private final j:[B


# virtual methods
.method protected h(JLio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;Lrg/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;",
            "Lrg/b<",
            "[B>;)V"
        }
    .end annotation

    iget v3, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/d;->i:I

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/internal/tcnative/d;->j:[B

    move-object v0, p3

    move-wide v1, p1

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/AsyncSSLPrivateKeyMethod;->a(JI[BLrg/b;)V

    return-void
.end method
