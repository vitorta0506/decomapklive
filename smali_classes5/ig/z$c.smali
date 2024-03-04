.class public abstract Lig/z$c;
.super Lio/grpc/internal/u0;
.source "SourceFile"

# interfaces
.implements Lig/k0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field private final A:Lio/grpc/netty/shaded/io/netty/channel/l0;

.field private B:I

.field private C:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

.field private D:Lqh/d;

.field private final y:Ljava/lang/String;

.field private final z:Lig/y;


# direct methods
.method protected constructor <init>(Lig/y;Lio/grpc/netty/shaded/io/netty/channel/l0;ILio/grpc/internal/i2;Lio/grpc/internal/p2;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4, p5}, Lio/grpc/internal/u0;-><init>(ILio/grpc/internal/i2;Lio/grpc/internal/p2;)V

    const-string p3, "methodName"

    .line 2
    invoke-static {p6, p3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lig/z$c;->y:Ljava/lang/String;

    const-string p3, "handler"

    .line 3
    invoke-static {p1, p3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lig/y;

    iput-object p1, p0, Lig/z$c;->z:Lig/y;

    const-string p1, "eventLoop"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/l0;

    iput-object p1, p0, Lig/z$c;->A:Lio/grpc/netty/shaded/io/netty/channel/l0;

    .line 5
    invoke-static {p6}, Lqh/c;->b(Ljava/lang/String;)Lqh/d;

    move-result-object p1

    iput-object p1, p0, Lig/z$c;->D:Lqh/d;

    return-void
.end method

.method static synthetic Y(Lig/z$c;)Lig/y;
    .locals 0

    iget-object p0, p0, Lig/z$c;->z:Lig/y;

    return-object p0
.end method


# virtual methods
.method public G()I
    .locals 1

    iget v0, p0, Lig/z$c;->B:I

    return v0
.end method

.method protected R(Lio/grpc/Status;ZLio/grpc/s0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/internal/a$c;->P(Lio/grpc/Status;ZLio/grpc/s0;)V

    .line 2
    iget-object p2, p0, Lig/z$c;->z:Lig/y;

    invoke-virtual {p2}, Lig/y;->c1()Lig/o0;

    move-result-object p2

    new-instance p3, Lig/c;

    invoke-direct {p3, p0, p1}, Lig/c;-><init>(Lig/z$c;Lio/grpc/Status;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p3, p1}, Lig/o0;->c(Lig/o0$c;Z)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public Z()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 1

    iget-object v0, p0, Lig/z$c;->C:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    return-object v0
.end method

.method a0()Z
    .locals 2

    iget v0, p0, Lig/z$c;->B:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lig/z$c;->z:Lig/y;

    iget-object v1, p0, Lig/z$c;->C:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    invoke-virtual {v0, v1, p1}, Lig/y;->m1(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V

    .line 2
    iget-object p1, p0, Lig/z$c;->z:Lig/y;

    invoke-virtual {p1}, Lig/y;->c1()Lig/o0;

    move-result-object p1

    invoke-virtual {p1}, Lig/o0;->f()V

    return-void
.end method

.method public b0(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    const-string v0, "http2Stream"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lig/z$c;->C:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Can only set http2Stream once"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lig/z$c;->C:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 4
    invoke-virtual {p0}, Lio/grpc/internal/d$a;->s()V

    .line 5
    invoke-virtual {p0}, Lio/grpc/internal/d$a;->m()Lio/grpc/internal/p2;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/p2;->c()V

    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {p1}, Lio/grpc/Status;->l(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    new-instance v0, Lio/grpc/s0;

    invoke-direct {v0}, Lio/grpc/s0;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lig/z$c;->R(Lio/grpc/Status;ZLio/grpc/s0;)V

    return-void
.end method

.method public c0(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "id must be positive %s"

    .line 1
    invoke-static {v2, v3, p1}, Lcom/google/common/base/o;->h(ZLjava/lang/String;I)V

    .line 2
    iget v2, p0, Lig/z$c;->B:I

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "id has been previously set: %s"

    invoke-static {v0, v1, v2}, Lcom/google/common/base/o;->B(ZLjava/lang/String;I)V

    .line 3
    iput p1, p0, Lig/z$c;->B:I

    .line 4
    iget-object v0, p0, Lig/z$c;->y:Ljava/lang/String;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lqh/c;->c(Ljava/lang/String;J)Lqh/d;

    move-result-object p1

    iput-object p1, p0, Lig/z$c;->D:Lqh/d;

    return-void
.end method

.method d0()V
    .locals 3

    .line 1
    iget v0, p0, Lig/z$c;->B:I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Id has been previously set: %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/o;->B(ZLjava/lang/String;I)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lig/z$c;->B:I

    return-void
.end method

.method public e(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lig/z$c;->A:Lio/grpc/netty/shaded/io/netty/channel/l0;

    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lig/z$c;->A:Lio/grpc/netty/shaded/io/netty/channel/l0;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected abstract e0(Lio/grpc/netty/shaded/io/netty/channel/i;)Lio/grpc/Status;
.end method

.method f0(Lkg/j;Z)V
    .locals 1

    new-instance v0, Lig/b0;

    invoke-virtual {p1}, Lkg/j;->T1()Lkg/j;

    move-result-object p1

    invoke-direct {v0, p1}, Lig/b0;-><init>(Lkg/j;)V

    invoke-virtual {p0, v0, p2}, Lio/grpc/internal/u0;->U(Lio/grpc/internal/v1;Z)V

    return-void
.end method

.method g0(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Z)V
    .locals 2

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p0}, Lio/grpc/internal/a$c;->I()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lig/z$c;->z:Lig/y;

    invoke-virtual {p2}, Lig/y;->c1()Lig/o0;

    move-result-object p2

    new-instance v0, Lig/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lig/c;-><init>(Lig/z$c;Lio/grpc/Status;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lig/o0;->c(Lig/o0$c;Z)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 3
    :cond_0
    invoke-static {p1}, Lig/m0;->g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;)Lio/grpc/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/internal/u0;->W(Lio/grpc/s0;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p1}, Lig/m0;->e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;)Lio/grpc/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/internal/u0;->V(Lio/grpc/s0;)V

    :goto_0
    return-void
.end method

.method public final tag()Lqh/d;
    .locals 1

    iget-object v0, p0, Lig/z$c;->D:Lqh/d;

    return-object v0
.end method
