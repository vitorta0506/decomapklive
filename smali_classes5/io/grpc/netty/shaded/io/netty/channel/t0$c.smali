.class final Lio/grpc/netty/shaded/io/netty/channel/t0$c;
.super Lio/grpc/netty/shaded/io/netty/channel/t0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final b:Lio/grpc/netty/shaded/io/netty/channel/e0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->k1()Lio/grpc/netty/shaded/io/netty/channel/r0$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/t0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/r0$a;Lio/grpc/netty/shaded/io/netty/channel/t0$a;)V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/t0$c;->b:Lio/grpc/netty/shaded/io/netty/channel/e0;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/t0$c;->b:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->g1(J)V

    return-void
.end method

.method public b(J)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/t0$c;->b:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->u1(J)V

    return-void
.end method
