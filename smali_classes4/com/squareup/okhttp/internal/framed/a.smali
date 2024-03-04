.class public final Lcom/squareup/okhttp/internal/framed/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/framed/a$i;,
        Lcom/squareup/okhttp/internal/framed/a$j;,
        Lcom/squareup/okhttp/internal/framed/a$h;
    }
.end annotation


# static fields
.field private static final x:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Lcom/squareup/okhttp/Protocol;

.field final b:Z

.field private final c:Lcom/squareup/okhttp/internal/framed/a$i;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/framed/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:J

.field private final j:Ljava/util/concurrent/ExecutorService;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/framed/h;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/squareup/okhttp/internal/framed/PushObserver;

.field private m:I

.field n:J

.field o:J

.field p:Lcom/squareup/okhttp/internal/framed/i;

.field final q:Lcom/squareup/okhttp/internal/framed/i;

.field private r:Z

.field final s:Lcom/squareup/okhttp/internal/framed/Variant;

.field final t:Ljava/net/Socket;

.field final u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

.field final v:Lcom/squareup/okhttp/internal/framed/a$j;

.field private final w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-class v0, Lcom/squareup/okhttp/internal/framed/a;

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    const-string v8, "OkHttp FramedConnection"

    invoke-static {v8, v1}, Lcom/squareup/okhttp/internal/i;->s(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/squareup/okhttp/internal/framed/a;->x:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/framed/a$h;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/a;->d:Ljava/util/Map;

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/framed/a;->i:J

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, v0, Lcom/squareup/okhttp/internal/framed/a;->n:J

    .line 6
    new-instance v1, Lcom/squareup/okhttp/internal/framed/i;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/framed/i;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/a;->p:Lcom/squareup/okhttp/internal/framed/i;

    .line 7
    new-instance v1, Lcom/squareup/okhttp/internal/framed/i;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/framed/i;-><init>()V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/a;->q:Lcom/squareup/okhttp/internal/framed/i;

    const/4 v2, 0x0

    .line 8
    iput-boolean v2, v0, Lcom/squareup/okhttp/internal/framed/a;->r:Z

    .line 9
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lcom/squareup/okhttp/internal/framed/a;->w:Ljava/util/Set;

    .line 10
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/a$h;->a(Lcom/squareup/okhttp/internal/framed/a$h;)Lcom/squareup/okhttp/Protocol;

    move-result-object v3

    iput-object v3, v0, Lcom/squareup/okhttp/internal/framed/a;->a:Lcom/squareup/okhttp/Protocol;

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/a$h;->b(Lcom/squareup/okhttp/internal/framed/a$h;)Lcom/squareup/okhttp/internal/framed/PushObserver;

    move-result-object v4

    iput-object v4, v0, Lcom/squareup/okhttp/internal/framed/a;->l:Lcom/squareup/okhttp/internal/framed/PushObserver;

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/a$h;->c(Lcom/squareup/okhttp/internal/framed/a$h;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/squareup/okhttp/internal/framed/a;->b:Z

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/a$h;->d(Lcom/squareup/okhttp/internal/framed/a$h;)Lcom/squareup/okhttp/internal/framed/a$i;

    move-result-object v5

    iput-object v5, v0, Lcom/squareup/okhttp/internal/framed/a;->c:Lcom/squareup/okhttp/internal/framed/a$i;

    .line 14
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/a$h;->c(Lcom/squareup/okhttp/internal/framed/a$h;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    iput v5, v0, Lcom/squareup/okhttp/internal/framed/a;->g:I

    .line 15
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/a$h;->c(Lcom/squareup/okhttp/internal/framed/a$h;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v3, v5, :cond_1

    .line 16
    iget v5, v0, Lcom/squareup/okhttp/internal/framed/a;->g:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/squareup/okhttp/internal/framed/a;->g:I

    .line 17
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/a$h;->c(Lcom/squareup/okhttp/internal/framed/a$h;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    :cond_2
    iput v6, v0, Lcom/squareup/okhttp/internal/framed/a;->m:I

    .line 18
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/a$h;->c(Lcom/squareup/okhttp/internal/framed/a$h;)Z

    move-result v5

    const/4 v6, 0x7

    if-eqz v5, :cond_3

    .line 19
    iget-object v5, v0, Lcom/squareup/okhttp/internal/framed/a;->p:Lcom/squareup/okhttp/internal/framed/i;

    const/high16 v8, 0x1000000

    invoke-virtual {v5, v6, v2, v8}, Lcom/squareup/okhttp/internal/framed/i;->l(III)Lcom/squareup/okhttp/internal/framed/i;

    .line 20
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/a$h;->e(Lcom/squareup/okhttp/internal/framed/a$h;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/squareup/okhttp/internal/framed/a;->e:Ljava/lang/String;

    .line 21
    sget-object v8, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    const/4 v9, 0x0

    if-ne v3, v8, :cond_4

    .line 22
    new-instance v3, Lcom/squareup/okhttp/internal/framed/e;

    invoke-direct {v3}, Lcom/squareup/okhttp/internal/framed/e;-><init>()V

    iput-object v3, v0, Lcom/squareup/okhttp/internal/framed/a;->s:Lcom/squareup/okhttp/internal/framed/Variant;

    .line 23
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x3c

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v5, v8, v2

    const-string v5, "OkHttp %s Push Observer"

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/squareup/okhttp/internal/i;->s(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v17

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v3, v0, Lcom/squareup/okhttp/internal/framed/a;->j:Ljava/util/concurrent/ExecutorService;

    const v3, 0xffff

    .line 24
    invoke-virtual {v1, v6, v2, v3}, Lcom/squareup/okhttp/internal/framed/i;->l(III)Lcom/squareup/okhttp/internal/framed/i;

    const/4 v3, 0x5

    const/16 v5, 0x4000

    .line 25
    invoke-virtual {v1, v3, v2, v5}, Lcom/squareup/okhttp/internal/framed/i;->l(III)Lcom/squareup/okhttp/internal/framed/i;

    goto :goto_1

    .line 26
    :cond_4
    sget-object v2, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v3, v2, :cond_5

    .line 27
    new-instance v2, Lcom/squareup/okhttp/internal/framed/j;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/framed/j;-><init>()V

    iput-object v2, v0, Lcom/squareup/okhttp/internal/framed/a;->s:Lcom/squareup/okhttp/internal/framed/Variant;

    .line 28
    iput-object v9, v0, Lcom/squareup/okhttp/internal/framed/a;->j:Ljava/util/concurrent/ExecutorService;

    :goto_1
    const/high16 v2, 0x10000

    .line 29
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/framed/i;->e(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/squareup/okhttp/internal/framed/a;->o:J

    .line 30
    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/a$h;->f(Lcom/squareup/okhttp/internal/framed/a$h;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/a;->t:Ljava/net/Socket;

    .line 31
    iget-object v1, v0, Lcom/squareup/okhttp/internal/framed/a;->s:Lcom/squareup/okhttp/internal/framed/Variant;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/a$h;->g(Lcom/squareup/okhttp/internal/framed/a$h;)Lokio/BufferedSink;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/squareup/okhttp/internal/framed/Variant;->newWriter(Lokio/BufferedSink;Z)Lcom/squareup/okhttp/internal/framed/FrameWriter;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    .line 32
    new-instance v1, Lcom/squareup/okhttp/internal/framed/a$j;

    iget-object v2, v0, Lcom/squareup/okhttp/internal/framed/a;->s:Lcom/squareup/okhttp/internal/framed/Variant;

    invoke-static/range {p1 .. p1}, Lcom/squareup/okhttp/internal/framed/a$h;->h(Lcom/squareup/okhttp/internal/framed/a$h;)Lokio/BufferedSource;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/squareup/okhttp/internal/framed/Variant;->newReader(Lokio/BufferedSource;Z)Lcom/squareup/okhttp/internal/framed/FrameReader;

    move-result-object v2

    invoke-direct {v1, v0, v2, v9}, Lcom/squareup/okhttp/internal/framed/a$j;-><init>(Lcom/squareup/okhttp/internal/framed/a;Lcom/squareup/okhttp/internal/framed/FrameReader;Lcom/squareup/okhttp/internal/framed/a$a;)V

    iput-object v1, v0, Lcom/squareup/okhttp/internal/framed/a;->v:Lcom/squareup/okhttp/internal/framed/a$j;

    .line 33
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    .line 34
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/framed/a$h;Lcom/squareup/okhttp/internal/framed/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/a;-><init>(Lcom/squareup/okhttp/internal/framed/a$h;)V

    return-void
.end method

.method static synthetic A(Lcom/squareup/okhttp/internal/framed/a;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/a;->W(ILjava/util/List;)V

    return-void
.end method

.method static synthetic C(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/PushObserver;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a;->l:Lcom/squareup/okhttp/internal/framed/PushObserver;

    return-object p0
.end method

.method static synthetic F(Lcom/squareup/okhttp/internal/framed/a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a;->w:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic I(Lcom/squareup/okhttp/internal/framed/a;ZIILcom/squareup/okhttp/internal/framed/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/a;->i0(ZIILcom/squareup/okhttp/internal/framed/h;)V

    return-void
.end method

.method private L(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/framed/a;->g0(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    :goto_0
    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Lcom/squareup/okhttp/internal/framed/b;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/squareup/okhttp/internal/framed/b;

    .line 5
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 6
    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/framed/a;->f0(Z)V

    goto :goto_1

    :cond_0
    move-object v1, v0

    .line 7
    :goto_1
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 8
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/squareup/okhttp/internal/framed/h;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/squareup/okhttp/internal/framed/h;

    .line 9
    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Ljava/util/Map;

    move-object v0, v3

    .line 10
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 11
    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 12
    :try_start_2
    invoke-virtual {v5, p2}, Lcom/squareup/okhttp/internal/framed/b;->l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    if-eqz p1, :cond_2

    move-object p1, v5

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 13
    array-length p2, v0

    :goto_4
    if-ge v2, p2, :cond_4

    aget-object v1, v0, v2

    .line 14
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/framed/h;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 15
    :cond_4
    :try_start_3
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception p2

    if-nez p1, :cond_5

    move-object p1, p2

    .line 16
    :cond_5
    :goto_5
    :try_start_4
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/a;->t:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    :goto_6
    if-nez p1, :cond_6

    return-void

    .line 17
    :cond_6
    throw p1

    :catchall_0
    move-exception p1

    .line 18
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private R(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/c;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/framed/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    xor-int/lit8 p4, p4, 0x1

    .line 1
    iget-object v7, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    monitor-enter v7

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Z

    if-nez v0, :cond_4

    .line 4
    iget v8, p0, Lcom/squareup/okhttp/internal/framed/a;->g:I

    add-int/lit8 v0, v8, 0x2

    .line 5
    iput v0, p0, Lcom/squareup/okhttp/internal/framed/a;->g:I

    .line 6
    new-instance v9, Lcom/squareup/okhttp/internal/framed/b;

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    move v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/framed/b;-><init>(ILcom/squareup/okhttp/internal/framed/a;ZZLjava/util/List;)V

    .line 7
    invoke-virtual {v9}, Lcom/squareup/okhttp/internal/framed/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/framed/a;->f0(Z)V

    .line 10
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 11
    :try_start_2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    move v1, v6

    move v2, p4

    move v3, v8

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->synStream(ZZIILjava/util/List;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-boolean p4, p0, Lcom/squareup/okhttp/internal/framed/a;->b:Z

    if-nez p4, :cond_3

    .line 13
    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {p4, p1, v8, p2}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->pushPromise(IILjava/util/List;)V

    .line 14
    :goto_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p3, :cond_2

    .line 15
    iget-object p1, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {p1}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->flush()V

    :cond_2
    return-object v9

    .line 16
    :cond_3
    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    :cond_4
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "shutdown"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    :catchall_1
    move-exception p1

    .line 19
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method private U(ILokio/BufferedSource;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    int-to-long v0, p3

    .line 2
    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 3
    invoke-interface {p2, v5, v0, v1}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 4
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/squareup/okhttp/internal/framed/a;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/framed/a$f;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a;->e:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/framed/a$f;-><init>(Lcom/squareup/okhttp/internal/framed/a;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-interface {p2, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, " != "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private V(ILjava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/c;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/framed/a$e;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Headers[%s]"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/framed/a$e;-><init>(Lcom/squareup/okhttp/internal/framed/a;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private W(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->w:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/a;->p0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->w:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/framed/a$d;

    const-string v3, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a;->e:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/a$d;-><init>(Lcom/squareup/okhttp/internal/framed/a;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private X(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/framed/a$g;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s Push Reset[%s]"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/a$g;-><init>(Lcom/squareup/okhttp/internal/framed/a;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private Y(I)Z
    .locals 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/2addr p1, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private declared-synchronized Z(I)Lcom/squareup/okhttp/internal/framed/h;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/internal/framed/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/framed/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/framed/a;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/a;->L(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/framed/a;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/a;->Y(I)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/framed/a;ILokio/BufferedSource;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/a;->U(ILokio/BufferedSource;IZ)V

    return-void
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/framed/a;ILjava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/a;->V(ILjava/util/List;Z)V

    return-void
.end method

.method private declared-synchronized f0(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/a;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/framed/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Z

    return p0
.end method

.method static synthetic i(Lcom/squareup/okhttp/internal/framed/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Z

    return p1
.end method

.method private i0(ZIILcom/squareup/okhttp/internal/framed/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    monitor-enter v0

    if-eqz p4, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p4}, Lcom/squareup/okhttp/internal/framed/h;->c()V

    .line 3
    :cond_0
    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {p4, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->ping(ZII)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic j(Lcom/squareup/okhttp/internal/framed/a;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/framed/a;->f:I

    return p0
.end method

.method private j0(ZIILcom/squareup/okhttp/internal/framed/h;)V
    .locals 10

    sget-object v0, Lcom/squareup/okhttp/internal/framed/a;->x:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/squareup/okhttp/internal/framed/a$c;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s ping %08x%08x"

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/squareup/okhttp/internal/framed/a$c;-><init>(Lcom/squareup/okhttp/internal/framed/a;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/framed/h;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic k(Lcom/squareup/okhttp/internal/framed/a;I)I
    .locals 0

    iput p1, p0, Lcom/squareup/okhttp/internal/framed/a;->f:I

    return p1
.end method

.method static synthetic o(Lcom/squareup/okhttp/internal/framed/a;)I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/internal/framed/a;->g:I

    return p0
.end method

.method static synthetic p(Lcom/squareup/okhttp/internal/framed/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic q(Lcom/squareup/okhttp/internal/framed/a;)Lcom/squareup/okhttp/internal/framed/a$i;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/internal/framed/a;->c:Lcom/squareup/okhttp/internal/framed/a$i;

    return-object p0
.end method

.method static synthetic r()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/squareup/okhttp/internal/framed/a;->x:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic s(Lcom/squareup/okhttp/internal/framed/a;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/framed/a;->X(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic t(Lcom/squareup/okhttp/internal/framed/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/internal/framed/a;->r:Z

    return p0
.end method

.method static synthetic v(Lcom/squareup/okhttp/internal/framed/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/framed/a;->r:Z

    return p1
.end method

.method static synthetic w(Lcom/squareup/okhttp/internal/framed/a;I)Lcom/squareup/okhttp/internal/framed/h;
    .locals 0

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/framed/a;->Z(I)Lcom/squareup/okhttp/internal/framed/h;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcom/squareup/okhttp/internal/framed/a;ZIILcom/squareup/okhttp/internal/framed/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/framed/a;->j0(ZIILcom/squareup/okhttp/internal/framed/h;)V

    return-void
.end method


# virtual methods
.method K(J)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/a;->o:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/a;->o:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method public M()Lcom/squareup/okhttp/Protocol;
    .locals 1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->a:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method declared-synchronized N(I)Lcom/squareup/okhttp/internal/framed/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/internal/framed/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized P()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->q:Lcom/squareup/okhttp/internal/framed/i;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/i;->f(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public T(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/internal/framed/c;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/framed/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/framed/a;->R(ILjava/util/List;ZZ)Lcom/squareup/okhttp/internal/framed/b;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized c0(I)Lcom/squareup/okhttp/internal/framed/b;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/okhttp/internal/framed/b;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/framed/a;->f0(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/framed/a;->L(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method public d0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->connectionPreface()V

    .line 2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a;->p:Lcom/squareup/okhttp/internal/framed/i;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->settings(Lcom/squareup/okhttp/internal/framed/i;)V

    .line 3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->p:Lcom/squareup/okhttp/internal/framed/i;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/i;->e(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    const/4 v3, 0x0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-interface {v2, v3, v0, v1}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->windowUpdate(IJ)V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->flush()V

    return-void
.end method

.method public g0(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Z

    if-eqz v1, :cond_0

    .line 4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_3
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/framed/a;->h:Z

    .line 6
    iget v1, p0, Lcom/squareup/okhttp/internal/framed/a;->f:I

    .line 7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :try_start_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    sget-object v3, Lcom/squareup/okhttp/internal/i;->a:[B

    invoke-interface {v2, v1, p1, v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;[B)V

    .line 9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public h0(IZLokio/Buffer;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-nez v3, :cond_0

    .line 1
    iget-object p4, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {p4, p2, p1, p3, v0}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v3, p4, v1

    if-lez v3, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :goto_1
    :try_start_0
    iget-wide v3, p0, Lcom/squareup/okhttp/internal/framed/a;->o:J

    cmp-long v5, v3, v1

    if-gtz v5, :cond_2

    .line 4
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/a;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    :try_start_1
    invoke-static {p4, p5, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 8
    iget-object v3, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->maxDataLength()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/framed/a;->o:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/framed/a;->o:J

    .line 10
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 11
    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v1

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v4, v5, p1, p3, v3}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->data(ZILokio/Buffer;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 12
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 13
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method l0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/a;->u:Lcom/squareup/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/internal/framed/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method p0(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 8

    sget-object v0, Lcom/squareup/okhttp/internal/framed/a;->x:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/squareup/okhttp/internal/framed/a$a;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s stream %d"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/squareup/okhttp/internal/framed/a$a;-><init>(Lcom/squareup/okhttp/internal/framed/a;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method r0(IJ)V
    .locals 9

    sget-object v0, Lcom/squareup/okhttp/internal/framed/a;->x:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/squareup/okhttp/internal/framed/a$b;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/a;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp Window Update %s stream %d"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/squareup/okhttp/internal/framed/a$b;-><init>(Lcom/squareup/okhttp/internal/framed/a;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
