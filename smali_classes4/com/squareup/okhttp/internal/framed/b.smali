.class public final Lcom/squareup/okhttp/internal/framed/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/framed/b$d;,
        Lcom/squareup/okhttp/internal/framed/b$b;,
        Lcom/squareup/okhttp/internal/framed/b$c;
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field private final c:I

.field private final d:Lcom/squareup/okhttp/internal/framed/a;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/squareup/okhttp/internal/framed/b$c;

.field final h:Lcom/squareup/okhttp/internal/framed/b$b;

.field private final i:Lcom/squareup/okhttp/internal/framed/b$d;

.field private final j:Lcom/squareup/okhttp/internal/framed/b$d;

.field private k:Lcom/squareup/okhttp/internal/framed/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ILcom/squareup/okhttp/internal/framed/a;ZZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/okhttp/internal/framed/a;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/b;->a:J

    .line 3
    new-instance v0, Lcom/squareup/okhttp/internal/framed/b$d;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/framed/b$d;-><init>(Lcom/squareup/okhttp/internal/framed/b;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->i:Lcom/squareup/okhttp/internal/framed/b$d;

    .line 4
    new-instance v0, Lcom/squareup/okhttp/internal/framed/b$d;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/framed/b$d;-><init>(Lcom/squareup/okhttp/internal/framed/b;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->j:Lcom/squareup/okhttp/internal/framed/b$d;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    const-string v1, "connection == null"

    .line 6
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "requestHeaders == null"

    .line 7
    invoke-static {p5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput p1, p0, Lcom/squareup/okhttp/internal/framed/b;->c:I

    .line 9
    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/b;->d:Lcom/squareup/okhttp/internal/framed/a;

    .line 10
    iget-object p1, p2, Lcom/squareup/okhttp/internal/framed/a;->q:Lcom/squareup/okhttp/internal/framed/i;

    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/internal/framed/i;->e(I)I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/squareup/okhttp/internal/framed/b;->b:J

    .line 11
    new-instance p1, Lcom/squareup/okhttp/internal/framed/b$c;

    iget-object p2, p2, Lcom/squareup/okhttp/internal/framed/a;->p:Lcom/squareup/okhttp/internal/framed/i;

    invoke-virtual {p2, v1}, Lcom/squareup/okhttp/internal/framed/i;->e(I)I

    move-result p2

    int-to-long v1, p2

    invoke-direct {p1, p0, v1, v2, v0}, Lcom/squareup/okhttp/internal/framed/b$c;-><init>(Lcom/squareup/okhttp/internal/framed/b;JLcom/squareup/okhttp/internal/framed/b$a;)V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/b;->g:Lcom/squareup/okhttp/internal/framed/b$c;

    .line 12
    new-instance p2, Lcom/squareup/okhttp/internal/framed/b$b;

    invoke-direct {p2, p0}, Lcom/squareup/okhttp/internal/framed/b$b;-><init>(Lcom/squareup/okhttp/internal/framed/b;)V

    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/b;->h:Lcom/squareup/okhttp/internal/framed/b$b;

    .line 13
    invoke-static {p1, p4}, Lcom/squareup/okhttp/internal/framed/b$c;->b(Lcom/squareup/okhttp/internal/framed/b$c;Z)Z

    .line 14
    invoke-static {p2, p3}, Lcom/squareup/okhttp/internal/framed/b$b;->b(Lcom/squareup/okhttp/internal/framed/b$b;Z)Z

    .line 15
    iput-object p5, p0, Lcom/squareup/okhttp/internal/framed/b;->e:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/framed/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/b;->j()V

    return-void
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/framed/b;)Lcom/squareup/okhttp/internal/framed/b$d;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/b;->j:Lcom/squareup/okhttp/internal/framed/b$d;

    return-object p0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/framed/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/b;->k()V

    return-void
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/framed/b;)Lcom/squareup/okhttp/internal/framed/a;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/b;->d:Lcom/squareup/okhttp/internal/framed/a;

    return-object p0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/framed/b;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/framed/b;->c:I

    return p0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/framed/b;)Lcom/squareup/okhttp/internal/framed/b$d;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/b;->i:Lcom/squareup/okhttp/internal/framed/b$d;

    return-object p0
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/framed/b;)Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/b;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    return-object p0
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/framed/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/b;->z()V

    return-void
.end method

.method private j()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->g:Lcom/squareup/okhttp/internal/framed/b$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/b$c;->a(Lcom/squareup/okhttp/internal/framed/b$c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->g:Lcom/squareup/okhttp/internal/framed/b$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/b$c;->c(Lcom/squareup/okhttp/internal/framed/b$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->h:Lcom/squareup/okhttp/internal/framed/b$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/b$b;->a(Lcom/squareup/okhttp/internal/framed/b$b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->h:Lcom/squareup/okhttp/internal/framed/b$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/b$b;->c(Lcom/squareup/okhttp/internal/framed/b$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/b;->t()Z

    move-result v1

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/framed/b;->l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->d:Lcom/squareup/okhttp/internal/framed/a;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/b;->c:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/a;->c0(I)Lcom/squareup/okhttp/internal/framed/b;

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private k()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->h:Lcom/squareup/okhttp/internal/framed/b$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/b$b;->c(Lcom/squareup/okhttp/internal/framed/b$b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->h:Lcom/squareup/okhttp/internal/framed/b$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/b$b;->a(Lcom/squareup/okhttp/internal/framed/b$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/b;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->g:Lcom/squareup/okhttp/internal/framed/b$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/b$c;->a(Lcom/squareup/okhttp/internal/framed/b$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->h:Lcom/squareup/okhttp/internal/framed/b$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/b$b;->a(Lcom/squareup/okhttp/internal/framed/b$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return v1

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/b;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/b;->d:Lcom/squareup/okhttp/internal/framed/a;

    iget v0, p0, Lcom/squareup/okhttp/internal/framed/b;->c:I

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/framed/a;->c0(I)Lcom/squareup/okhttp/internal/framed/b;

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private z()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2
    :catch_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public A()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->j:Lcom/squareup/okhttp/internal/framed/b$d;

    return-object v0
.end method

.method i(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/b;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/b;->b:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/b;->m(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->d:Lcom/squareup/okhttp/internal/framed/a;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/b;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/framed/a;->l0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method public n(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/b;->m(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->d:Lcom/squareup/okhttp/internal/framed/a;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/b;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/framed/a;->p0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/squareup/okhttp/internal/framed/b;->c:I

    return v0
.end method

.method public declared-synchronized p()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->i:Lcom/squareup/okhttp/internal/framed/b$d;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->f:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/framed/b;->z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->i:Lcom/squareup/okhttp/internal/framed/b$d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/framed/b$d;->exitAndThrowIfTimedOut()V

    .line 5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->f:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/b;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/b;->i:Lcom/squareup/okhttp/internal/framed/b$d;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/b$d;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public q()Lokio/Sink;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->f:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/b;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->h:Lcom/squareup/okhttp/internal/framed/b$b;

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public r()Lokio/Source;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->g:Lcom/squareup/okhttp/internal/framed/b$c;

    return-object v0
.end method

.method public s()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/squareup/okhttp/internal/framed/b;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/b;->d:Lcom/squareup/okhttp/internal/framed/a;

    iget-boolean v3, v3, Lcom/squareup/okhttp/internal/framed/a;->b:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public declared-synchronized t()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->g:Lcom/squareup/okhttp/internal/framed/b$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/b$c;->a(Lcom/squareup/okhttp/internal/framed/b$c;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->g:Lcom/squareup/okhttp/internal/framed/b$c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/b$c;->c(Lcom/squareup/okhttp/internal/framed/b$c;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->h:Lcom/squareup/okhttp/internal/framed/b$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/b$b;->a(Lcom/squareup/okhttp/internal/framed/b$b;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->h:Lcom/squareup/okhttp/internal/framed/b$b;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/b$b;->c(Lcom/squareup/okhttp/internal/framed/b$b;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->f:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 4
    monitor-exit p0

    return v1

    :cond_3
    const/4 v0, 0x1

    .line 5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public u()Lokio/Timeout;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->i:Lcom/squareup/okhttp/internal/framed/b$d;

    return-object v0
.end method

.method v(Lokio/BufferedSource;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->g:Lcom/squareup/okhttp/internal/framed/b$c;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/okhttp/internal/framed/b$c;->h(Lokio/BufferedSource;J)V

    return-void
.end method

.method w()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->g:Lcom/squareup/okhttp/internal/framed/b$c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/framed/b$c;->b(Lcom/squareup/okhttp/internal/framed/b$c;Z)Z

    .line 3
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/b;->t()Z

    move-result v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->d:Lcom/squareup/okhttp/internal/framed/a;

    iget v1, p0, Lcom/squareup/okhttp/internal/framed/b;->c:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/a;->c0(I)Lcom/squareup/okhttp/internal/framed/b;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method x(Ljava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/c;",
            ">;",
            "Lcom/squareup/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/b;->f:Ljava/util/List;

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfHeadersAbsent()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/b;->f:Ljava/util/List;

    .line 6
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/framed/b;->t()Z

    move-result v1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfHeadersPresent()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->STREAM_IN_USE:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    goto :goto_0

    .line 10
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/b;->f:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    iput-object p2, p0, Lcom/squareup/okhttp/internal/framed/b;->f:Ljava/util/List;

    .line 14
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/framed/b;->n(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/b;->d:Lcom/squareup/okhttp/internal/framed/a;

    iget p2, p0, Lcom/squareup/okhttp/internal/framed/b;->c:I

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/internal/framed/a;->c0(I)Lcom/squareup/okhttp/internal/framed/b;

    :cond_4
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized y(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/b;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/b;->k:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
