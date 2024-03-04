.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:I

.field private g:Z

.field final synthetic h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 3
    invoke-virtual {p0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->k(I)V

    .line 4
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->w(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)F

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->e:F

    return-void
.end method

.method private j(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->c:I

    sub-int v1, v0, p1

    iget v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->b:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v0, p1

    .line 2
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->c:I

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result p1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 4
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Attempting to return too many bytes for stream %d"

    .line 5
    invoke-static {p1, v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method private l()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->d:I

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->c:I

    sub-int/2addr v0, v1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->g(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->y(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->u(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v3

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->h:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-static {v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->u(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v4

    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v4

    invoke-interface {v1, v2, v3, v0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->k0(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void

    :catchall_0
    move-exception v0

    .line 4
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 5
    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Attempting to return too many bytes for stream %d"

    .line 6
    invoke-static {v1, v0, v3, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->d:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->b:I

    return v0
.end method

.method public c(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->b:I

    .line 2
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->f:I

    if-lt v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result p1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FLOW_CONTROL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 4
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Flow control window exceeded for stream: %d"

    .line 5
    invoke-static {p1, v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public d(I)V
    .locals 4

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->d:I

    int-to-long v0, v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    .line 3
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    .line 4
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->d:I

    sub-int/2addr p1, v0

    add-int/2addr v0, p1

    .line 5
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->d:I

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->g:Z

    return-void
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->c:I

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public g(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 1
    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->b:I

    const v2, 0x7fffffff

    sub-int/2addr v2, p1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result p1

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FLOW_CONTROL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 3
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Flow control window overflowed for stream: %d"

    .line 4
    invoke-static {p1, v1, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->b:I

    .line 6
    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->c:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->c:I

    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->f:I

    return-void
.end method

.method public h()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->g:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->d:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->x(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->d:I

    int-to-float v0, v0

    iget v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->e:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 4
    iget v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->c:I

    if-gt v2, v0, :cond_1

    .line 5
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->l()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public i(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->j(I)V

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->h()Z

    move-result p1

    return p1
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->d:I

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->c:I

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;->b:I

    return-void
.end method
