.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$c;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;)V
    .locals 6

    sget-wide v3, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSL;->l:J

    new-instance v5, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0;

    iget-object v0, p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    invoke-direct {v5, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/k0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;JLio/grpc/netty/shaded/io/netty/handler/ssl/y0;)V

    return-void
.end method
