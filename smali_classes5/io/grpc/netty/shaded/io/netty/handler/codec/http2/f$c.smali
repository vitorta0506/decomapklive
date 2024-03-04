.class public abstract Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
.end annotation


# instance fields
.field protected final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

.field protected b:Lio/grpc/netty/shaded/io/netty/channel/y;

.field protected c:Z

.field protected d:I

.field final synthetic e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;IZLio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "padding"

    .line 2
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 3
    iput p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->d:I

    .line 4
    iput-boolean p4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->c:Z

    .line 5
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 6
    iput-object p5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;->g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic e(Lug/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/i;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->f(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lug/q;->p0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;->e:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;->p()Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;->d(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
