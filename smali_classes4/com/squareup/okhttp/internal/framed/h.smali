.class public final Lcom/squareup/okhttp/internal/framed/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/framed/h;->a:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/h;->b:J

    .line 4
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/h;->c:J

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/h;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/h;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 2
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/h;->c:J

    .line 3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/h;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method b()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/h;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/h;->b:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/h;->c:J

    .line 3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/h;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method c()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/framed/h;->b:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/framed/h;->b:J

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
