.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0;
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$c;


# instance fields
.field private final c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;

.field private final d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;

.field private final e:Lkg/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;)V
    .locals 1

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;)V

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lkg/s0;->a()Lkg/j;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;->e:Lkg/j;

    const-string v0, "sensitiveDetector"

    .line 5
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;

    const-string p1, "hpackEncoder"

    .line 6
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;->e:Lkg/j;

    invoke-virtual {v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->t(Lkg/j;J)V

    return-void
.end method

.method public b(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->s(J)V

    return-void
.end method

.method public c(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Lkg/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;->e:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->j1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;->e:Lkg/j;

    invoke-virtual {p3, v0}, Lkg/j;->x2(Lkg/j;)Lkg/j;

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;->e:Lkg/j;

    invoke-virtual {v0}, Lkg/j;->L()Lkg/j;

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;

    invoke-virtual {v0, p1, p3, p2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p;->d(ILkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$d;)V
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "Failed encoding headers block: %s"

    invoke-static {p2, p1, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :catch_0
    move-exception p1

    .line 6
    throw p1
.end method

.method public configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$c;
    .locals 0

    return-object p0
.end method
