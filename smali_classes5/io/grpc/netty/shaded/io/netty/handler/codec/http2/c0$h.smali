.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/channel/m;

.field private final b:Lio/grpc/netty/shaded/io/netty/channel/y;

.field private final c:Lug/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/q<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->c:Lug/q;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 7
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 8
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object p1

    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h$a;

    invoke-direct {p2, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;)V

    invoke-interface {p1, p2, p3, p4, p5}, Lug/l;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->c:Lug/q;

    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->d:Z

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->b:Lio/grpc/netty/shaded/io/netty/channel/y;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void
.end method


# virtual methods
.method public c(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->c:Lug/q;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lug/q;->cancel(Z)Z

    .line 3
    :cond_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->b()V

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

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$h;->c(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
