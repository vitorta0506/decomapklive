.class abstract Lig/b;
.super Lig/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/b$b;,
        Lig/b$d;,
        Lig/b$c;
    }
.end annotation


# instance fields
.field private A:Lio/grpc/netty/shaded/io/netty/channel/m;

.field private B:Z

.field private final x:I

.field private final y:Lig/b$c;

.field private z:Z


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/ChannelLogger;ZLig/b$d;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lig/j;-><init>(Lio/grpc/netty/shaded/io/netty/channel/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/ChannelLogger;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lig/b;->B:Z

    const-wide/16 p1, -0x1

    .line 3
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->l0(J)V

    .line 4
    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->B()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->B()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lig/b;->x:I

    .line 6
    iput-boolean p6, p0, Lig/b;->z:Z

    if-nez p7, :cond_1

    .line 7
    new-instance p7, Lig/b$b;

    const/4 p1, 0x0

    invoke-direct {p7, p1}, Lig/b$b;-><init>(Lig/b$a;)V

    .line 8
    :cond_1
    new-instance p1, Lig/b$c;

    invoke-direct {p1, p0, p7}, Lig/b$c;-><init>(Lig/b;Lig/b$d;)V

    iput-object p1, p0, Lig/b;->y:Lig/b$c;

    return-void
.end method

.method static synthetic B0(Lig/b;)Z
    .locals 0

    iget-boolean p0, p0, Lig/b;->z:Z

    return p0
.end method

.method static synthetic C0(Lig/b;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;
    .locals 0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->j0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-result-object p0

    return-object p0
.end method

.method private F0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lig/b;->B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lig/b;->A:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;

    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I

    move-result v1

    .line 4
    iget v2, p0, Lig/b;->x:I

    sub-int/2addr v2, v1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->g0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lig/b;->B:Z

    .line 7
    iget-object v0, p0, Lig/b;->A:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lig/b;->A:Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 2
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->A(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 3
    invoke-direct {p0}, Lig/b;->F0()V

    return-void
.end method

.method public D(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->D(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 2
    invoke-direct {p0}, Lig/b;->F0()V

    return-void
.end method

.method protected final D0()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    iget-object v0, p0, Lig/b;->A:Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object v0
.end method

.method E0()Lig/b$c;
    .locals 1

    iget-object v0, p0, Lig/b;->y:Lig/b$c;

    return-object v0
.end method

.method public final a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->c(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
