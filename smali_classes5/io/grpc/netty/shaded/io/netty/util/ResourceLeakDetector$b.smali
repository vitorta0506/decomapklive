.class final Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/grpc/netty/shaded/io/netty/util/v<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b<",
            "*>;",
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile a:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

.field private volatile b:I

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;

    const-class v1, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    const-string v2, "a"

    .line 2
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 3
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;

    const-string v1, "b"

    .line 4
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->d:I

    .line 3
    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance p2, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->a()Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    move-result-object v0

    invoke-direct {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;-><init>(Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;)V

    invoke-virtual {p1, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->c:Ljava/util/Set;

    return-void
.end method

.method private static f(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private g(Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->b()I

    move-result v0

    if-lez v0, :cond_6

    .line 2
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->b(Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->b()I

    move-result v4

    const/4 v5, 0x0

    if-lt v2, v4, :cond_4

    .line 5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->b()I

    move-result v4

    sub-int/2addr v2, v4

    const/16 v4, 0x1e

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->Q0()Ljava/util/Random;

    move-result-object v4

    shl-int v2, v3, v2

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 7
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->c(Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    move v5, v3

    goto :goto_2

    :cond_4
    move-object v2, v1

    .line 8
    :goto_2
    new-instance v3, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    if-eqz p1, :cond_5

    invoke-direct {v3, v2, p1}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;-><init>(Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-direct {v3, v2}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;-><init>(Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;)V

    .line 9
    :goto_3
    invoke-static {v0, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v5, :cond_6

    .line 10
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    :cond_6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->d()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->f(Ljava/lang/Object;)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->f(Ljava/lang/Object;)V

    .line 3
    throw v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->b(Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    mul-int/lit16 v6, v3, 0x800

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v6, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Recent access records: "

    .line 5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 7
    :goto_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->a()Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    move-result-object v3

    if-eq v0, v3, :cond_3

    .line 8
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->c(Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    move-result-object v7

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->a()Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    move-result-object v8

    if-ne v7, v8, :cond_1

    const-string v7, "Created at:"

    .line 11
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v7, 0x23

    .line 12
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 13
    :goto_1
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;->c(Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, ": "

    if-lez v2, :cond_4

    .line 14
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " leak records were discarded because they were duplicates"

    .line 16
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-lez v1, :cond_5

    .line 18
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " leak records were discarded because the leak record count is targeted to "

    .line 20
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->b()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Use system property "

    .line 22
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "io.grpc.netty.shaded.io.netty.leakDetection.targetRecords"

    .line 23
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to increase the limit."

    .line 24
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 27
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
