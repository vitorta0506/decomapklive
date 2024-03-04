.class public Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/j;
.super Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/n<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;->clear()V

    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;->b:I

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/q;->m()J

    move-result-wide v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/p;->d()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v1

    if-ltz v7, :cond_2

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/k;->f()J

    move-result-wide v1

    int-to-long v7, v0

    add-long/2addr v1, v7

    add-long/2addr v1, v5

    cmp-long v7, v3, v1

    if-ltz v7, :cond_1

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_1
    invoke-virtual {p0, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/q;->n(J)V

    :cond_2
    add-long/2addr v5, v3

    .line 7
    invoke-virtual {p0, v3, v4, v5, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/p;->g(JJ)Z

    move-result v5

    if-eqz v5, :cond_0

    int-to-long v0, v0

    .line 8
    invoke-static {v3, v4, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->b(JJ)I

    move-result v0

    .line 9
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-static {v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->g(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/k;->u()J

    move-result-wide v1

    .line 3
    iget v3, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;->b:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->b(JJ)I

    move-result v3

    .line 4
    invoke-static {v0, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/p;->d()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_1

    .line 6
    :cond_0
    invoke-static {v0, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    :goto_0
    return-object v4
.end method

.method public poll()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/k;->u()J

    move-result-wide v0

    .line 2
    iget v2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->b(JJ)I

    move-result v2

    .line 3
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4
    invoke-static {v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/p;->d()J

    move-result-wide v6

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    .line 6
    :cond_0
    invoke-static {v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    return-object v5

    .line 7
    :cond_2
    :goto_0
    invoke-static {v3, v2, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->h(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 8
    invoke-virtual {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/k;->x(J)V

    return-object v4
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
