.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field private b:J

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)V

    return-void
.end method


# virtual methods
.method public final b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->r(I)I

    return-void
.end method

.method c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    return-void
.end method

.method d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)V

    return-void
.end method

.method final e(I)V
    .locals 4

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->b:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->b:J

    return-void
.end method

.method f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->k(I)I

    return-void
.end method

.method g(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const-string v0, "newWindowSize"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->w(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)I

    move-result v0

    sub-int v0, p1, v0

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->x(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;I)I

    .line 4
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->t(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p1

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d$a;

    invoke-direct {v1, p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;I)V

    invoke-interface {p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    if-lez v0, :cond_0

    .line 5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->u(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->l()V

    :cond_0
    return-void
.end method

.method final h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final i()Z
    .locals 5

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->C(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->b()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->u(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method j(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;)V
    .locals 0

    return-void
.end method

.method k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->p(I)V

    return-void
.end method

.method final l()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->a:Z

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->D(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)I

    move-result v1

    .line 4
    :cond_1
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->A(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;

    move-result-object v2

    invoke-interface {v2, v1, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;->a(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/b1$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    .line 5
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->D(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    .line 6
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->s(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 7
    :cond_2
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->a:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->a:Z

    .line 8
    throw v1
.end method
