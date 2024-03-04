.class final Lug/e0;
.super Lug/a0;
.source "SourceFile"

# interfaces
.implements Lug/d0;
.implements Lio/grpc/netty/shaded/io/netty/util/internal/w;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lug/a0<",
        "TV;>;",
        "Lug/d0<",
        "TV;>;",
        "Lio/grpc/netty/shaded/io/netty/util/internal/w;"
    }
.end annotation


# static fields
.field private static final v:J


# instance fields
.field private r:J

.field private s:J

.field private final t:J

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lug/e0;

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lug/e0;->v:J

    return-void
.end method

.method constructor <init>(Lug/d;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lug/a0;-><init>(Lug/j;Ljava/lang/Runnable;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lug/e0;->u:I

    .line 3
    iput-wide p3, p0, Lug/e0;->s:J

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lug/e0;->t:J

    return-void
.end method

.method constructor <init>(Lug/d;Ljava/lang/Runnable;JJ)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lug/a0;-><init>(Lug/j;Ljava/lang/Runnable;)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lug/e0;->u:I

    .line 7
    iput-wide p3, p0, Lug/e0;->s:J

    .line 8
    invoke-static {p5, p6}, Lug/e0;->F0(J)J

    move-result-wide p1

    iput-wide p1, p0, Lug/e0;->t:J

    return-void
.end method

.method constructor <init>(Lug/d;Ljava/util/concurrent/Callable;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/d;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Lug/a0;-><init>(Lug/j;Ljava/util/concurrent/Callable;)V

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lug/e0;->u:I

    .line 15
    iput-wide p3, p0, Lug/e0;->s:J

    const-wide/16 p1, 0x0

    .line 16
    iput-wide p1, p0, Lug/e0;->t:J

    return-void
.end method

.method constructor <init>(Lug/d;Ljava/util/concurrent/Callable;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lug/d;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;JJ)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Lug/a0;-><init>(Lug/j;Ljava/util/concurrent/Callable;)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lug/e0;->u:I

    .line 11
    iput-wide p3, p0, Lug/e0;->s:J

    .line 12
    invoke-static {p5, p6}, Lug/e0;->F0(J)J

    move-result-wide p1

    iput-wide p1, p0, Lug/e0;->t:J

    return-void
.end method

.method static B0()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lug/e0;->v:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private C0()Lug/d;
    .locals 1

    invoke-virtual {p0}, Lug/e0;->v()Lug/j;

    move-result-object v0

    check-cast v0, Lug/d;

    return-object v0
.end method

.method private static F0(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "period: 0 (expected: != 0)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static y0(J)J
    .locals 3

    invoke-static {}, Lug/e0;->B0()J

    move-result-wide v0

    add-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :cond_0
    return-wide v0
.end method

.method static z0(J)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lug/e0;->B0()J

    move-result-wide v2

    sub-long/2addr p0, v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public A0()J
    .locals 2

    invoke-virtual {p0}, Lug/e0;->x0()J

    move-result-wide v0

    invoke-static {v0, v1}, Lug/e0;->z0(J)J

    move-result-wide v0

    return-wide v0
.end method

.method D0()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lug/e0;->t:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iput-wide v2, p0, Lug/e0;->s:J

    :cond_0
    return-void
.end method

.method E0(J)Lug/e0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lug/e0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lug/e0;->r:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iput-wide p1, p0, Lug/e0;->r:J

    :cond_0
    return-object p0
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/util/internal/g;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/g<",
            "*>;)I"
        }
    .end annotation

    iget p1, p0, Lug/e0;->u:I

    return p1
.end method

.method public cancel(Z)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lug/a0;->cancel(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lug/e0;->C0()Lug/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lug/d;->G(Lug/e0;)V

    :cond_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lug/e0;->w0(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    invoke-virtual {p0}, Lug/e0;->A0()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(Lio/grpc/netty/shaded/io/netty/util/internal/g;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/g<",
            "*>;I)V"
        }
    .end annotation

    iput p2, p0, Lug/e0;->u:I

    return-void
.end method

.method protected j0()Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    invoke-super {p0}, Lug/a0;->j0()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const-string v1, " deadline: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lug/e0;->s:J

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", period: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lug/e0;->t:J

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public run()V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lug/e0;->A0()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 2
    invoke-virtual {p0}, Lug/h;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lug/e0;->C0()Lug/d;

    move-result-object v0

    invoke-virtual {v0}, Lug/d;->J()Lio/grpc/netty/shaded/io/netty/util/internal/v;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/v;->g0(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lug/e0;->C0()Lug/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lug/d;->I(Lug/e0;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    iget-wide v0, p0, Lug/e0;->t:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 6
    invoke-virtual {p0}, Lug/a0;->u0()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p0}, Lug/a0;->n0()Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-virtual {p0, v0}, Lug/a0;->t0(Ljava/lang/Object;)Lug/x;

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p0}, Lug/h;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    invoke-virtual {p0}, Lug/a0;->n0()Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lug/e0;->v()Lug/j;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    iget-wide v0, p0, Lug/e0;->t:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 13
    iget-wide v2, p0, Lug/e0;->s:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lug/e0;->s:J

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {}, Lug/e0;->B0()J

    move-result-wide v0

    iget-wide v2, p0, Lug/e0;->t:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lug/e0;->s:J

    .line 15
    :goto_1
    invoke-virtual {p0}, Lug/h;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    invoke-direct {p0}, Lug/e0;->C0()Lug/d;

    move-result-object v0

    invoke-virtual {v0}, Lug/d;->J()Lio/grpc/netty/shaded/io/netty/util/internal/v;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 17
    invoke-virtual {p0, v0}, Lug/a0;->r0(Ljava/lang/Throwable;)Lug/x;

    :cond_4
    :goto_2
    return-void
.end method

.method protected v()Lug/j;
    .locals 1

    invoke-super {p0}, Lug/h;->v()Lug/j;

    move-result-object v0

    return-object v0
.end method

.method v0(Z)Z
    .locals 0

    invoke-super {p0, p1}, Lug/a0;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public w0(Ljava/util/concurrent/Delayed;)I
    .locals 7

    if-ne p0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    check-cast p1, Lug/e0;

    .line 2
    invoke-virtual {p0}, Lug/e0;->x0()J

    move-result-wide v0

    invoke-virtual {p1}, Lug/e0;->x0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    return v4

    :cond_1
    const/4 v0, 0x1

    if-lez v5, :cond_2

    return v0

    .line 3
    :cond_2
    iget-wide v1, p0, Lug/e0;->r:J

    iget-wide v5, p1, Lug/e0;->r:J

    cmp-long p1, v1, v5

    if-gez p1, :cond_3

    return v4

    :cond_3
    return v0
.end method

.method public x0()J
    .locals 2

    iget-wide v0, p0, Lug/e0;->s:J

    return-wide v0
.end method
