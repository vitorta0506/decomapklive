.class Lig/y$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/y;->Z0(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/h;Lio/grpc/netty/shaded/io/netty/channel/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lig/h;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/m;

.field final synthetic c:Lig/y;


# direct methods
.method constructor <init>(Lig/y;Lig/h;Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    iput-object p1, p0, Lig/y$f;->c:Lig/y;

    iput-object p2, p0, Lig/y$f;->a:Lig/h;

    iput-object p3, p0, Lig/y$f;->b:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lig/y$f;->c:Lig/y;

    invoke-static {v0, p1}, Lig/y;->Q0(Lig/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lig/z$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lig/z$c;->tag()Lqh/d;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lqh/c;->a()Lqh/d;

    move-result-object v1

    :goto_0
    const-string v2, "NettyClientHandler.forcefulClose"

    .line 3
    invoke-static {v2, v1}, Lqh/c;->h(Ljava/lang/String;Lqh/d;)V

    .line 4
    iget-object v3, p0, Lig/y$f;->a:Lig/h;

    invoke-virtual {v3}, Lig/o0$b;->c()Lqh/b;

    move-result-object v3

    invoke-static {v3}, Lqh/c;->e(Lqh/b;)V

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    iget-object v4, p0, Lig/y$f;->a:Lig/h;

    invoke-virtual {v4}, Lig/h;->d()Lio/grpc/Status;

    move-result-object v4

    new-instance v5, Lio/grpc/s0;

    invoke-direct {v5}, Lio/grpc/s0;-><init>()V

    invoke-virtual {v0, v4, v3, v5}, Lio/grpc/internal/a$c;->P(Lio/grpc/Status;ZLio/grpc/s0;)V

    .line 6
    iget-object v6, p0, Lig/y$f;->c:Lig/y;

    iget-object v7, p0, Lig/y$f;->b:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v8

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->CANCEL:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v9

    iget-object v0, p0, Lig/y$f;->b:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->d(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 7
    :cond_1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->close()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v2, v1}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    return v3

    :catchall_0
    move-exception p1

    invoke-static {v2, v1}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    throw p1
.end method
