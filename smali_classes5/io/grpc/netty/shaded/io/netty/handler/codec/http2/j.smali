.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;

.field private final b:Z

.field private c:J

.field private d:F


# direct methods
.method public constructor <init>(ZJ)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;-><init>(ZJI)V

    return-void
.end method

.method public constructor <init>(ZJI)V
    .locals 0
    .param p4    # I
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param

    .line 2
    new-instance p4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;

    invoke-direct {p4, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;-><init>(J)V

    invoke-direct {p0, p1, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;-><init>(ZLio/grpc/netty/shaded/io/netty/handler/codec/http2/n;)V

    return-void
.end method

.method constructor <init>(ZLio/grpc/netty/shaded/io/netty/handler/codec/http2/n;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41000000    # 8.0f

    .line 4
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->d:F

    const-string v0, "hpackDecoder"

    .line 5
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;

    .line 6
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->b:Z

    .line 7
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->g()J

    move-result-wide p1

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->a(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->c:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->o(J)V

    return-void
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;
    .locals 0

    return-object p0
.end method

.method public d(ILkg/j;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->g()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;

    iget-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->b:Z

    invoke-virtual {v1, p1, p2, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->b(ILkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Z)V

    const p1, 0x3e4ccccd    # 0.2f

    .line 3
    invoke-interface {v0}, Lpg/i;->size()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    const p1, 0x3f4ccccd    # 0.8f

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->d:F

    mul-float v1, v1, p1

    add-float/2addr p2, v1

    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->d:F
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p1

    .line 4
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    .line 5
    throw p1
.end method

.method public e(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    cmp-long v0, p3, p1

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n;->n(J)V

    .line 2
    iput-wide p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->c:J

    return-void

    .line 3
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v1, v2

    const/4 p3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, p3

    const-string p1, "Header List Size GO_AWAY %d must be non-negative and >= %d"

    .line 5
    invoke-static {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->c:J

    return-wide v0
.end method

.method protected g()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method protected final h()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j;->d:F

    float-to-int v0, v0

    return v0
.end method
