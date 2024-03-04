.class final Lxg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxg/a$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lokio/Buffer;

.field private final c:Lio/grpc/internal/d2;

.field private final d:Lxg/b$a;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lokio/Sink;

.field private i:Ljava/net/Socket;


# direct methods
.method private constructor <init>(Lio/grpc/internal/d2;Lxg/b$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxg/a;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lxg/a;->b:Lokio/Buffer;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lxg/a;->e:Z

    .line 5
    iput-boolean v0, p0, Lxg/a;->f:Z

    .line 6
    iput-boolean v0, p0, Lxg/a;->g:Z

    const-string v0, "executor"

    .line 7
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/d2;

    iput-object p1, p0, Lxg/a;->c:Lio/grpc/internal/d2;

    const-string p1, "exceptionHandler"

    .line 8
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxg/b$a;

    iput-object p1, p0, Lxg/a;->d:Lxg/b$a;

    return-void
.end method

.method static synthetic a(Lxg/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lxg/a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lxg/a;)Lokio/Buffer;
    .locals 0

    iget-object p0, p0, Lxg/a;->b:Lokio/Buffer;

    return-object p0
.end method

.method static synthetic c(Lxg/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lxg/a;->e:Z

    return p1
.end method

.method static synthetic d(Lxg/a;)Lokio/Sink;
    .locals 0

    iget-object p0, p0, Lxg/a;->h:Lokio/Sink;

    return-object p0
.end method

.method static synthetic e(Lxg/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lxg/a;->f:Z

    return p1
.end method

.method static synthetic h(Lxg/a;)Lxg/b$a;
    .locals 0

    iget-object p0, p0, Lxg/a;->d:Lxg/b$a;

    return-object p0
.end method

.method static synthetic i(Lxg/a;)Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lxg/a;->i:Ljava/net/Socket;

    return-object p0
.end method

.method static k(Lio/grpc/internal/d2;Lxg/b$a;)Lxg/a;
    .locals 1

    new-instance v0, Lxg/a;

    invoke-direct {v0, p0, p1}, Lxg/a;-><init>(Lio/grpc/internal/d2;Lxg/b$a;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lxg/a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lxg/a;->g:Z

    .line 3
    iget-object v0, p0, Lxg/a;->c:Lio/grpc/internal/d2;

    new-instance v1, Lxg/a$c;

    invoke-direct {v1, p0}, Lxg/a$c;-><init>(Lxg/a;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/d2;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lxg/a;->g:Z

    if-nez v0, :cond_1

    const-string v0, "AsyncSink.flush"

    .line 2
    invoke-static {v0}, Lqh/c;->g(Ljava/lang/String;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lxg/a;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-boolean v1, p0, Lxg/a;->f:Z

    if-eqz v1, :cond_0

    .line 5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "AsyncSink.flush"

    .line 6
    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 7
    :try_start_2
    iput-boolean v1, p0, Lxg/a;->f:Z

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    iget-object v0, p0, Lxg/a;->c:Lio/grpc/internal/d2;

    new-instance v1, Lxg/a$b;

    invoke-direct {v1, p0}, Lxg/a$b;-><init>(Lxg/a;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/d2;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v0, "AsyncSink.flush"

    .line 10
    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 11
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "AsyncSink.flush"

    .line 12
    invoke-static {v1}, Lqh/c;->i(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j(Lokio/Sink;Ljava/net/Socket;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lxg/a;->h:Lokio/Sink;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "AsyncSink\'s becomeConnected should only be called once."

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    const-string v0, "sink"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokio/Sink;

    iput-object p1, p0, Lxg/a;->h:Lokio/Sink;

    const-string p1, "socket"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/Socket;

    iput-object p1, p0, Lxg/a;->i:Ljava/net/Socket;

    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lxg/a;->g:Z

    if-nez v0, :cond_2

    const-string v0, "AsyncSink.write"

    .line 3
    invoke-static {v0}, Lqh/c;->g(Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lxg/a;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v1, p0, Lxg/a;->b:Lokio/Buffer;

    invoke-virtual {v1, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 6
    iget-boolean p1, p0, Lxg/a;->e:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lxg/a;->f:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lxg/a;->b:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lxg/a;->e:Z

    .line 8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    iget-object p1, p0, Lxg/a;->c:Lio/grpc/internal/d2;

    new-instance p2, Lxg/a$a;

    invoke-direct {p2, p0}, Lxg/a$a;-><init>(Lxg/a;)V

    invoke-virtual {p1, p2}, Lio/grpc/internal/d2;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string p1, "AsyncSink.write"

    .line 10
    invoke-static {p1}, Lqh/c;->i(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string p1, "AsyncSink.write"

    .line 12
    invoke-static {p1}, Lqh/c;->i(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    const-string p2, "AsyncSink.write"

    .line 14
    invoke-static {p2}, Lqh/c;->i(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
