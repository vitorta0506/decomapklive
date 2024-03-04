.class Lxg/g$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyg/a$a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxg/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field private final a:Lxg/h;

.field b:Lyg/a;

.field c:Z

.field final synthetic d:Lxg/g;


# direct methods
.method constructor <init>(Lxg/g;Lyg/a;)V
    .locals 3

    .line 1
    new-instance v0, Lxg/h;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v2, Lxg/g;

    invoke-direct {v0, v1, v2}, Lxg/h;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lxg/g$f;-><init>(Lxg/g;Lyg/a;Lxg/h;)V

    return-void
.end method

.method constructor <init>(Lxg/g;Lyg/a;Lxg/h;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lxg/g$f;->c:Z

    .line 4
    iput-object p2, p0, Lxg/g$f;->b:Lyg/a;

    .line 5
    iput-object p3, p0, Lxg/g$f;->a:Lxg/h;

    return-void
.end method

.method private b(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lyg/c;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyg/c;

    .line 3
    iget-object v4, v3, Lyg/c;->a:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    iget-object v3, v3, Lyg/c;->b:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    add-int/2addr v4, v3

    int-to-long v3, v4

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    return-void
.end method

.method public data(ZILokio/BufferedSource;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxg/g$f;->a:Lxg/h;

    sget-object v1, Lxg/h$a;->a:Lxg/h$a;

    .line 2
    invoke-interface {p3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v3

    move v2, p2

    move v4, p4

    move v5, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Lxg/h;->b(Lxg/h$a;ILokio/Buffer;IZ)V

    .line 4
    iget-object v0, p0, Lxg/g$f;->d:Lxg/g;

    invoke-virtual {v0, p2}, Lxg/g;->a0(I)Lxg/f;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-virtual {p1, p2}, Lxg/g;->e0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p1}, Lxg/g;->j(Lxg/g;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v0}, Lxg/g;->y(Lxg/g;)Lxg/b;

    move-result-object v0

    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, p2, v1}, Lxg/b;->g(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 8
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long p1, p4

    .line 9
    invoke-interface {p3, p1, p2}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 10
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 11
    :cond_0
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    sget-object p3, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received data for unknown stream: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lxg/g;->z(Lxg/g;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    :cond_1
    int-to-long v1, p4

    .line 12
    invoke-interface {p3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 13
    new-instance p2, Lokio/Buffer;

    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    .line 14
    invoke-interface {p3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p3

    invoke-virtual {p2, p3, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    const-string p3, "OkHttpClientTransport$ClientFrameHandler.data"

    .line 15
    invoke-virtual {v0}, Lxg/f;->R()Lxg/f$b;

    move-result-object v1

    invoke-virtual {v1}, Lxg/f$b;->tag()Lqh/d;

    move-result-object v1

    .line 16
    invoke-static {p3, v1}, Lqh/c;->d(Ljava/lang/String;Lqh/d;)V

    .line 17
    iget-object p3, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p3}, Lxg/g;->j(Lxg/g;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 18
    :try_start_2
    invoke-virtual {v0}, Lxg/f;->R()Lxg/f$b;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lxg/f$b;->h0(Lokio/Buffer;Z)V

    .line 19
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 20
    :goto_0
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p1, p4}, Lxg/g;->C(Lxg/g;I)I

    .line 21
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p1}, Lxg/g;->A(Lxg/g;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p2}, Lxg/g;->D(Lxg/g;)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p2, p2, p3

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    .line 22
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p1}, Lxg/g;->j(Lxg/g;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 23
    :try_start_3
    iget-object p2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p2}, Lxg/g;->y(Lxg/g;)Lxg/b;

    move-result-object p2

    iget-object p3, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p3}, Lxg/g;->A(Lxg/g;)I

    move-result p3

    int-to-long p3, p3

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3, p4}, Lxg/b;->windowUpdate(IJ)V

    .line 24
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 25
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p1, v0}, Lxg/g;->B(Lxg/g;I)I

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 26
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2

    :cond_2
    :goto_1
    return-void

    :catchall_2
    move-exception p1

    .line 27
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1
.end method

.method public g(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lxg/g$f;->a:Lxg/h;

    sget-object v1, Lxg/h$a;->a:Lxg/h$a;

    invoke-virtual {v0, v1, p1, p2}, Lxg/h;->h(Lxg/h$a;ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 2
    invoke-static {p2}, Lxg/g;->r0(Lio/grpc/okhttp/internal/framed/ErrorCode;)Lio/grpc/Status;

    move-result-object v0

    const-string v1, "Rst Stream"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->f(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object v0

    sget-object v1, Lio/grpc/Status$Code;->CANCELLED:Lio/grpc/Status$Code;

    if-eq v0, v1, :cond_1

    invoke-virtual {v4}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object v0

    sget-object v1, Lio/grpc/Status$Code;->DEADLINE_EXCEEDED:Lio/grpc/Status$Code;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v6, 0x1

    .line 4
    :goto_1
    iget-object v0, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v0}, Lxg/g;->j(Lxg/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v1}, Lxg/g;->F(Lxg/g;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxg/f;

    if-eqz v1, :cond_3

    const-string v2, "OkHttpClientTransport$ClientFrameHandler.rstStream"

    .line 6
    invoke-virtual {v1}, Lxg/f;->R()Lxg/f$b;

    move-result-object v1

    invoke-virtual {v1}, Lxg/f$b;->tag()Lqh/d;

    move-result-object v1

    .line 7
    invoke-static {v2, v1}, Lqh/c;->d(Ljava/lang/String;Lqh/d;)V

    .line 8
    iget-object v2, p0, Lxg/g$f;->d:Lxg/g;

    .line 9
    sget-object v1, Lio/grpc/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    if-ne p2, v1, :cond_2

    sget-object p2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    goto :goto_2

    :cond_2
    sget-object p2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    :goto_2
    move-object v5, p2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    .line 10
    invoke-virtual/range {v2 .. v8}, Lxg/g;->V(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/s0;)V

    .line 11
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(ZLyg/g;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lxg/g$f;->a:Lxg/h;

    sget-object v0, Lxg/h$a;->a:Lxg/h$a;

    invoke-virtual {p1, v0, p2}, Lxg/h;->i(Lxg/h$a;Lyg/g;)V

    .line 2
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p1}, Lxg/g;->j(Lxg/g;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x4

    .line 3
    :try_start_0
    invoke-static {p2, v0}, Lxg/k;->b(Lyg/g;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p2, v0}, Lxg/k;->a(Lyg/g;I)I

    move-result v0

    .line 5
    iget-object v1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v1, v0}, Lxg/g;->O(Lxg/g;I)I

    :cond_0
    const/4 v0, 0x7

    .line 6
    invoke-static {p2, v0}, Lxg/k;->b(Lyg/g;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 7
    invoke-static {p2, v0}, Lxg/k;->a(Lyg/g;I)I

    move-result v0

    .line 8
    iget-object v1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v1}, Lxg/g;->v(Lxg/g;)Lxg/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lxg/o;->e(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-boolean v1, p0, Lxg/g$f;->c:Z

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v1}, Lxg/g;->i(Lxg/g;)Lio/grpc/internal/k1$a;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/k1$a;->b()V

    .line 11
    iput-boolean v2, p0, Lxg/g$f;->c:Z

    .line 12
    :cond_2
    iget-object v1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v1}, Lxg/g;->y(Lxg/g;)Lxg/b;

    move-result-object v1

    invoke-virtual {v1, p2}, Lxg/b;->e0(Lyg/g;)V

    if-eqz v0, :cond_3

    .line 13
    iget-object p2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p2}, Lxg/g;->v(Lxg/g;)Lxg/o;

    move-result-object p2

    invoke-virtual {p2}, Lxg/o;->h()V

    .line 14
    :cond_3
    iget-object p2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p2}, Lxg/g;->P(Lxg/g;)Z

    .line 15
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public i(ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lxg/g$f;->a:Lxg/h;

    sget-object v1, Lxg/h$a;->a:Lxg/h$a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lxg/h;->c(Lxg/h$a;ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 2
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    if-ne p2, v0, :cond_0

    .line 3
    invoke-virtual {p3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lxg/g;->x()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v4, "%s: Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const-string v1, "too_many_pings"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v0}, Lxg/g;->I(Lxg/g;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 7
    :cond_0
    iget p2, p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    int-to-long v0, p2

    invoke-static {v0, v1}, Lio/grpc/internal/GrpcUtil$Http2Error;->statusForCode(J)Lio/grpc/Status;

    move-result-object p2

    const-string v0, "Received Goaway"

    .line 8
    invoke-virtual {p2, v0}, Lio/grpc/Status;->f(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    .line 9
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 10
    invoke-virtual {p3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/grpc/Status;->f(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    .line 11
    :cond_1
    iget-object p3, p0, Lxg/g$f;->d:Lxg/g;

    const/4 v0, 0x0

    invoke-static {p3, p1, v0, p2}, Lxg/g;->r(Lxg/g;ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    return-void
.end method

.method public j(ZZIILjava/util/List;Lio/grpc/okhttp/internal/framed/HeadersMode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lyg/c;",
            ">;",
            "Lio/grpc/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lxg/g$f;->a:Lxg/h;

    sget-object p4, Lxg/h$a;->a:Lxg/h$a;

    invoke-virtual {p1, p4, p3, p5, p2}, Lxg/h;->d(Lxg/h$a;ILjava/util/List;Z)V

    .line 2
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p1}, Lxg/g;->E(Lxg/g;)I

    move-result p1

    const/4 p4, 0x1

    const/4 p6, 0x0

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_1

    .line 3
    invoke-direct {p0, p5}, Lxg/g$f;->b(Ljava/util/List;)I

    move-result p1

    .line 4
    iget-object v0, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v0}, Lxg/g;->E(Lxg/g;)I

    move-result v0

    if-le p1, v0, :cond_1

    .line 5
    sget-object v0, Lio/grpc/Status;->o:Lio/grpc/Status;

    const-string v1, "Response %s metadata larger than %d: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string v3, "trailer"

    goto :goto_0

    :cond_0
    const-string v3, "header"

    :goto_0
    aput-object v3, v2, p6

    .line 6
    iget-object v3, p0, Lxg/g$f;->d:Lxg/g;

    .line 7
    invoke-static {v3}, Lxg/g;->E(Lxg/g;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p4

    const/4 v3, 0x2

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 9
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_1
    iget-object v0, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v0}, Lxg/g;->j(Lxg/g;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v1}, Lxg/g;->F(Lxg/g;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxg/f;

    if-nez v1, :cond_2

    .line 13
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-virtual {p1, p3}, Lxg/g;->e0(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p1}, Lxg/g;->y(Lxg/g;)Lxg/b;

    move-result-object p1

    sget-object p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, p3, p2}, Lxg/b;->g(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "OkHttpClientTransport$ClientFrameHandler.headers"

    .line 15
    invoke-virtual {v1}, Lxg/f;->R()Lxg/f$b;

    move-result-object p4

    invoke-virtual {p4}, Lxg/f$b;->tag()Lqh/d;

    move-result-object p4

    .line 16
    invoke-static {p1, p4}, Lqh/c;->d(Ljava/lang/String;Lqh/d;)V

    .line 17
    invoke-virtual {v1}, Lxg/f;->R()Lxg/f$b;

    move-result-object p1

    invoke-virtual {p1, p5, p2}, Lxg/f$b;->i0(Ljava/util/List;Z)V

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    .line 18
    iget-object p2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p2}, Lxg/g;->y(Lxg/g;)Lxg/b;

    move-result-object p2

    sget-object p4, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p2, p3, p4}, Lxg/b;->g(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 19
    :cond_4
    invoke-virtual {v1}, Lxg/f;->R()Lxg/f$b;

    move-result-object p2

    new-instance p4, Lio/grpc/s0;

    invoke-direct {p4}, Lio/grpc/s0;-><init>()V

    invoke-virtual {p2, p1, p6, p4}, Lio/grpc/internal/a$c;->P(Lio/grpc/Status;ZLio/grpc/s0;)V

    :goto_2
    const/4 p4, 0x0

    .line 20
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_6

    .line 21
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    sget-object p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Received header for unknown stream: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lxg/g;->z(Lxg/g;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ping(ZII)V
    .locals 9

    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1
    iget-object v2, p0, Lxg/g$f;->a:Lxg/h;

    sget-object v3, Lxg/h$a;->a:Lxg/h$a;

    invoke-virtual {v2, v3, v0, v1}, Lxg/h;->e(Lxg/h$a;J)V

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p1}, Lxg/g;->j(Lxg/g;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v0}, Lxg/g;->y(Lxg/g;)Lxg/b;

    move-result-object v0

    invoke-virtual {v0, v2, p2, p3}, Lxg/b;->ping(ZII)V

    .line 4
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 5
    :cond_0
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p1}, Lxg/g;->j(Lxg/g;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 6
    :try_start_1
    iget-object p2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p2}, Lxg/g;->G(Lxg/g;)Lio/grpc/internal/v0;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p2}, Lxg/g;->G(Lxg/g;)Lio/grpc/internal/v0;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/internal/v0;->h()J

    move-result-wide v3

    cmp-long p2, v3, v0

    if-nez p2, :cond_1

    .line 8
    iget-object p2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p2}, Lxg/g;->G(Lxg/g;)Lio/grpc/internal/v0;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v0, p3}, Lxg/g;->H(Lxg/g;Lio/grpc/internal/v0;)Lio/grpc/internal/v0;

    move-object p3, p2

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lxg/g;->x()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Received unexpected ping ack. Expecting %d, got %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lxg/g$f;->d:Lxg/g;

    .line 11
    invoke-static {v7}, Lxg/g;->G(Lxg/g;)Lio/grpc/internal/v0;

    move-result-object v7

    invoke-virtual {v7}, Lio/grpc/internal/v0;->h()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    .line 12
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Lxg/g;->x()Ljava/util/logging/Logger;

    move-result-object p2

    const-string v0, "Received unexpected ping ack. No ping outstanding"

    invoke-virtual {p2, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 14
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p3, :cond_3

    .line 15
    invoke-virtual {p3}, Lio/grpc/internal/v0;->d()Z

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception p2

    .line 16
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method public priority(IIIZ)V
    .locals 0

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lyg/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxg/g$f;->a:Lxg/h;

    sget-object v1, Lxg/h$a;->a:Lxg/h$a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lxg/h;->g(Lxg/h$a;IILjava/util/List;)V

    .line 2
    iget-object p2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p2}, Lxg/g;->j(Lxg/g;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3
    :try_start_0
    iget-object p3, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p3}, Lxg/g;->y(Lxg/g;)Lxg/b;

    move-result-object p3

    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p3, p1, v0}, Lxg/b;->g(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 4
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "OkHttpClientTransport"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lxg/g$f;->b:Lyg/a;

    invoke-interface {v2, p0}, Lyg/a;->g1(Lyg/a$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v2}, Lxg/g;->u(Lxg/g;)Lio/grpc/internal/c1;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v2}, Lxg/g;->u(Lxg/g;)Lio/grpc/internal/c1;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/c1;->n()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v2}, Lxg/g;->j(Lxg/g;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v3, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v3}, Lxg/g;->w(Lxg/g;)Lio/grpc/Status;

    move-result-object v3

    .line 8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 9
    :try_start_2
    sget-object v2, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v3, "End of stream or IOException"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    .line 10
    :cond_2
    iget-object v2, p0, Lxg/g$f;->d:Lxg/g;

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-static {v2, v1, v4, v3}, Lxg/g;->r(Lxg/g;ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :try_start_3
    iget-object v1, p0, Lxg/g$f;->b:Lyg/a;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 12
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    .line 13
    :try_start_6
    iget-object v3, p0, Lxg/g$f;->d:Lxg/g;

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    sget-object v5, Lio/grpc/Status;->t:Lio/grpc/Status;

    const-string v6, "error in frame handler"

    .line 14
    invoke-virtual {v5, v6}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v5

    invoke-virtual {v5, v2}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v2

    .line 15
    invoke-static {v3, v1, v4, v2}, Lxg/g;->r(Lxg/g;ILio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 16
    :try_start_7
    iget-object v1, p0, Lxg/g$f;->b:Lyg/a;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 17
    :goto_1
    invoke-static {}, Lxg/g;->x()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Exception closing frame reader"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    :goto_2
    iget-object v1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v1}, Lxg/g;->i(Lxg/g;)Lio/grpc/internal/k1$a;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/k1$a;->d()V

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v1

    .line 20
    :try_start_8
    iget-object v2, p0, Lxg/g$f;->b:Lyg/a;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 21
    invoke-static {}, Lxg/g;->x()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, "Exception closing frame reader"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :goto_3
    iget-object v2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v2}, Lxg/g;->i(Lxg/g;)Lio/grpc/internal/k1$a;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/internal/k1$a;->d()V

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
.end method

.method public windowUpdate(IJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lxg/g$f;->a:Lxg/h;

    sget-object v1, Lxg/h$a;->a:Lxg/h$a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lxg/h;->k(Lxg/h$a;IJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    const-string p2, "Received 0 flow control window increment."

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    sget-object p3, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-static {p1, p3, p2}, Lxg/g;->z(Lxg/g;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lxg/g$f;->d:Lxg/g;

    sget-object p3, Lio/grpc/Status;->t:Lio/grpc/Status;

    .line 4
    invoke-virtual {p3, p2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const/4 v4, 0x0

    sget-object v5, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const/4 v6, 0x0

    move v1, p1

    .line 5
    invoke-virtual/range {v0 .. v6}, Lxg/g;->V(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/s0;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v1}, Lxg/g;->j(Lxg/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-nez p1, :cond_2

    .line 7
    :try_start_0
    iget-object p1, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {p1}, Lxg/g;->v(Lxg/g;)Lxg/o;

    move-result-object p1

    const/4 v0, 0x0

    long-to-int p3, p2

    invoke-virtual {p1, v0, p3}, Lxg/o;->g(Lxg/f;I)I

    .line 8
    monitor-exit v1

    return-void

    .line 9
    :cond_2
    iget-object v2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v2}, Lxg/g;->F(Lxg/g;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxg/f;

    if-eqz v2, :cond_3

    .line 10
    iget-object v3, p0, Lxg/g$f;->d:Lxg/g;

    invoke-static {v3}, Lxg/g;->v(Lxg/g;)Lxg/o;

    move-result-object v3

    long-to-int p3, p2

    invoke-virtual {v3, v2, p3}, Lxg/o;->g(Lxg/f;I)I

    goto :goto_1

    .line 11
    :cond_3
    iget-object p2, p0, Lxg/g$f;->d:Lxg/g;

    invoke-virtual {p2, p1}, Lxg/g;->e0(I)Z

    move-result p2

    if-nez p2, :cond_4

    const/4 v0, 0x1

    .line 12
    :cond_4
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 13
    iget-object p2, p0, Lxg/g$f;->d:Lxg/g;

    sget-object p3, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received window_update for unknown stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lxg/g;->z(Lxg/g;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
