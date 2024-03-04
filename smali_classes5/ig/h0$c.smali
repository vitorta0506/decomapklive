.class final Lig/h0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lig/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

.field private final b:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Lio/grpc/internal/p1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;",
            "Lio/grpc/internal/p1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sslContext"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    iput-object p1, p0, Lig/h0$c;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    .line 3
    iput-object p2, p0, Lig/h0$c;->b:Lio/grpc/internal/p1;

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Lio/grpc/internal/p1;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lig/h0$c;->c:Ljava/util/concurrent/Executor;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lig/j;)Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 8

    .line 1
    new-instance v1, Lig/h0$e;

    invoke-direct {v1, p1}, Lig/h0$e;-><init>(Lig/j;)V

    .line 2
    invoke-virtual {p1}, Lig/j;->z0()Lio/grpc/ChannelLogger;

    move-result-object v6

    .line 3
    new-instance v7, Lig/h0$b;

    iget-object v2, p0, Lig/h0$c;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;

    invoke-virtual {p1}, Lig/j;->x0()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lig/h0$c;->c:Ljava/util/concurrent/Executor;

    move-object v0, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lig/h0$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;Ljava/lang/String;Ljava/util/concurrent/Executor;Lio/grpc/ChannelLogger;)V

    .line 4
    new-instance p1, Lig/h0$n;

    invoke-direct {p1, v7, v6}, Lig/h0$n;-><init>(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/ChannelLogger;)V

    return-object p1
.end method

.method public b()Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 1

    sget-object v0, Lig/m0;->e:Lio/grpc/netty/shaded/io/netty/util/c;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lig/h0$c;->b:Lio/grpc/internal/p1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lig/h0$c;->c:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lio/grpc/internal/p1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
