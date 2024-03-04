.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->h0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/j;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/j;

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/j;Lio/grpc/netty/shaded/io/netty/channel/j;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/j;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;->b:Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-interface {v0, p1}, Lug/r;->e(Lug/q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;->b:Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-interface {v0, p1}, Lug/r;->e(Lug/q;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;->b:Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-interface {v1, p1}, Lug/r;->e(Lug/q;)V

    .line 3
    throw v0
.end method

.method public bridge synthetic e(Lug/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/i;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
