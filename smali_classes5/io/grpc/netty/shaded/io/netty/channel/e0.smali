.class public Lio/grpc/netty/shaded/io/netty/channel/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/e0$j;,
        Lio/grpc/netty/shaded/io/netty/channel/e0$h;,
        Lio/grpc/netty/shaded/io/netty/channel/e0$i;,
        Lio/grpc/netty/shaded/io/netty/channel/e0$g;,
        Lio/grpc/netty/shaded/io/netty/channel/e0$k;
    }
.end annotation


# static fields
.field static final l:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final m:Ljava/lang/String;

.field private static final n:Ljava/lang/String;

.field private static final o:Lug/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/n<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/channel/e0;",
            "Lio/grpc/netty/shaded/io/netty/channel/r0$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lio/grpc/netty/shaded/io/netty/channel/b;

.field final b:Lio/grpc/netty/shaded/io/netty/channel/b;

.field private final c:Lio/grpc/netty/shaded/io/netty/channel/e;

.field private final d:Lio/grpc/netty/shaded/io/netty/channel/i;

.field private final e:Lio/grpc/netty/shaded/io/netty/channel/e1;

.field private final f:Z

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lug/l;",
            "Lug/j;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:Lio/grpc/netty/shaded/io/netty/channel/r0$a;

.field private i:Z

.field private j:Lio/grpc/netty/shaded/io/netty/channel/e0$i;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/e0;

    .line 2
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/e0;->l:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 3
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->r1(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/e0;->m:Ljava/lang/String;

    .line 4
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/e0$k;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->r1(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/e0;->n:Ljava/lang/String;

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/e0$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/e0;->o:Lug/n;

    .line 6
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/e0;

    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/r0$a;

    const-string v2, "h"

    .line 7
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/e0;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->g()Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->f:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->i:Z

    const-string v1, "channel"

    .line 4
    invoke-static {p1, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/channel/e;

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->c:Lio/grpc/netty/shaded/io/netty/channel/e;

    .line 5
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/d1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/channel/d1;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->d:Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 6
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/e1;

    invoke-direct {v1, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/e1;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Z)V

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->e:Lio/grpc/netty/shaded/io/netty/channel/e1;

    .line 7
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/e0$k;

    invoke-direct {p1, p0, p0}, Lio/grpc/netty/shaded/io/netty/channel/e0$k;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/e0;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 8
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;

    invoke-direct {v0, p0, p0}, Lio/grpc/netty/shaded/io/netty/channel/e0$g;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/e0;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 9
    iput-object p1, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 10
    iput-object v0, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    return-void
.end method

.method private static C0(Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 1

    .line 1
    iput-object p0, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    iput-object v0, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    iput-object p1, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 4
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    return-void
.end method

.method private static F0(Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    iput-object v0, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 2
    iput-object p0, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    iput-object p1, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 4
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    return-void
.end method

.method private G1(Lio/grpc/netty/shaded/io/netty/channel/b;)Lio/grpc/netty/shaded/io/netty/channel/b;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->Q0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    .line 3
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->X0(Lio/grpc/netty/shaded/io/netty/channel/b;Z)V

    .line 5
    monitor-exit p0

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/e0$b;

    invoke-direct {v1, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 9
    monitor-exit p0

    return-object p1

    .line 10
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->Y0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private H1(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->b1(Lio/grpc/netty/shaded/io/netty/channel/k;)V

    if-nez p2, :cond_0

    .line 3
    invoke-direct {p0, p3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->q1(Lio/grpc/netty/shaded/io/netty/channel/k;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->a1(Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->g:Lug/j;

    invoke-direct {p0, v0, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->w1(Lug/l;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object p2

    .line 7
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->I1(Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/b;)V

    .line 8
    iget-boolean p3, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->k:Z

    if-nez p3, :cond_2

    const/4 p3, 0x1

    .line 9
    invoke-direct {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->X0(Lio/grpc/netty/shaded/io/netty/channel/b;Z)V

    const/4 p2, 0x0

    .line 10
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->X0(Lio/grpc/netty/shaded/io/netty/channel/b;Z)V

    .line 11
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 12
    :cond_2
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object p3

    .line 13
    invoke-interface {p3}, Lug/j;->Y()Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/e0$c;

    invoke-direct {v0, p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0$c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/b;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 15
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 16
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->R0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    .line 18
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->Y0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    .line 19
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static I1(Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 3
    iput-object v0, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 4
    iput-object v1, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 5
    iput-object p1, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 6
    iput-object p1, v1, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 7
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 8
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    return-void
.end method

.method private P0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 2
    iput-object v0, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    iput-object v1, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 4
    iput-object p1, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    iput-object p1, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    return-void
.end method

.method private declared-synchronized Q0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 2
    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 3
    iput-object p1, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 4
    iput-object v0, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private R0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->z0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 2
    :try_start_1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->Q0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    .line 3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->A0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 4
    sget-object v3, Lio/grpc/netty/shaded/io/netty/channel/e0;->l:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove a handler: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelPipelineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".handlerAdded() has thrown an exception; removed."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/w;

    goto :goto_1

    .line 9
    :cond_1
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelPipelineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".handlerAdded() has thrown an exception; also failed to remove."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-virtual {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/w;

    :goto_1
    return-void
.end method

.method private S0()V
    .locals 2

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->k:Z

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->j:Lio/grpc/netty/shaded/io/netty/channel/e0$i;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->j:Lio/grpc/netty/shaded/io/netty/channel/e0$i;

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0$i;->b()V

    .line 7
    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/e0$i;->b:Lio/grpc/netty/shaded/io/netty/channel/e0$i;

    goto :goto_0

    :cond_0
    return-void

    .line 8
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1
.end method

.method private T0(Lio/grpc/netty/shaded/io/netty/channel/b;Lug/j;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->n1()V

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/e0$f;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0$f;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private X0(Lio/grpc/netty/shaded/io/netty/channel/b;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Lio/grpc/netty/shaded/io/netty/channel/e0$h;

    invoke-direct {p2, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0$h;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lio/grpc/netty/shaded/io/netty/channel/e0$j;

    invoke-direct {p2, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0$j;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V

    .line 2
    :goto_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->j:Lio/grpc/netty/shaded/io/netty/channel/e0$i;

    if-nez p1, :cond_1

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->j:Lio/grpc/netty/shaded/io/netty/channel/e0$i;

    goto :goto_2

    .line 4
    :cond_1
    :goto_1
    iget-object v0, p1, Lio/grpc/netty/shaded/io/netty/channel/e0$i;->b:Lio/grpc/netty/shaded/io/netty/channel/e0$i;

    if-eqz v0, :cond_2

    move-object p1, v0

    goto :goto_1

    .line 5
    :cond_2
    iput-object p2, p1, Lio/grpc/netty/shaded/io/netty/channel/e0$i;->b:Lio/grpc/netty/shaded/io/netty/channel/e0$i;

    :goto_2
    return-void
.end method

.method private Y0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->A0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ChannelPipelineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".handlerRemoved() has thrown an exception."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/w;

    :goto_0
    return-void
.end method

.method private a1(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->f1(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate handler name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b1(Lio/grpc/netty/shaded/io/netty/channel/k;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/channel/l;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Lio/grpc/netty/shaded/io/netty/channel/l;

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/l;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/l;->a:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/ChannelPipelineException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a @Sharable handler, so can\'t be added or removed multiple times."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/l;->a:Z

    :cond_2
    return-void
.end method

.method private d1(Lug/l;)Lug/j;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->c:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/r;->J:Lio/grpc/netty/shaded/io/netty/channel/r;

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/f;->b(Lio/grpc/netty/shaded/io/netty/channel/r;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p1}, Lug/l;->next()Lug/j;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->g:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Ljava/util/IdentityHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->g:Ljava/util/Map;

    .line 6
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lug/j;

    if-nez v1, :cond_3

    .line 7
    invoke-interface {p1}, Lug/l;->next()Lug/j;

    move-result-object v1

    .line 8
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method

.method static synthetic e0(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->R0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-void
.end method

.method private f1(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 2
    :goto_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized h1()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->j1(Lio/grpc/netty/shaded/io/netty/channel/b;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i1(Ljava/lang/Thread;Lio/grpc/netty/shaded/io/netty/channel/b;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    :goto_0
    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v1

    if-nez p3, :cond_2

    .line 3
    invoke-interface {v1, p1}, Lug/j;->L0(Ljava/lang/Thread;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/e0$e;

    invoke-direct {p1, p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0$e;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    .line 5
    :cond_2
    :goto_2
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->Q0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    .line 6
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->Y0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    .line 7
    iget-object p2, p2, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    const/4 p3, 0x0

    goto :goto_0
.end method

.method private j1(Lio/grpc/netty/shaded/io/netty/channel/b;Z)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    :goto_0
    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, v1, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-direct {p0, v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->i1(Ljava/lang/Thread;Lio/grpc/netty/shaded/io/netty/channel/b;Z)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v2

    if-nez p2, :cond_1

    .line 5
    invoke-interface {v2, v0}, Lug/j;->L0(Ljava/lang/Thread;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    new-instance p2, Lio/grpc/netty/shaded/io/netty/channel/e0$d;

    invoke-direct {p2, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0$d;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V

    invoke-interface {v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    .line 7
    :cond_1
    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    const/4 p2, 0x0

    goto :goto_0
.end method

.method private l1(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->q1(Lio/grpc/netty/shaded/io/netty/channel/k;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->a1(Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic n(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->Y0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-void
.end method

.method static synthetic o0(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->j1(Lio/grpc/netty/shaded/io/netty/channel/b;Z)V

    return-void
.end method

.method static synthetic p0(Lio/grpc/netty/shaded/io/netty/channel/e0;Ljava/lang/Thread;Lio/grpc/netty/shaded/io/netty/channel/b;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->i1(Ljava/lang/Thread;Lio/grpc/netty/shaded/io/netty/channel/b;Z)V

    return-void
.end method

.method private q1(Lio/grpc/netty/shaded/io/netty/channel/k;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/e0;->o:Lug/n;

    invoke-virtual {v0}, Lug/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 4
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->r1(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->f1(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->f1(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private static r1(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->l(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/e0;->n:Ljava/lang/String;

    return-object v0
.end method

.method private s1(Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/b;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->W0(Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private t1(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/b;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->e1(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic u0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/e0;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v0(Lio/grpc/netty/shaded/io/netty/channel/e0;)Lio/grpc/netty/shaded/io/netty/channel/e;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->c:Lio/grpc/netty/shaded/io/netty/channel/e;

    return-object p0
.end method

.method static synthetic w0(Lio/grpc/netty/shaded/io/netty/channel/e0;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->h1()V

    return-void
.end method

.method private w1(Lug/l;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/b;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/d0;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->d1(Lug/l;)Lug/j;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/d0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lug/j;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)V

    return-object v0
.end method

.method static synthetic y0(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->Q0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-void
.end method


# virtual methods
.method public final A0(Lug/l;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p4}, Lio/grpc/netty/shaded/io/netty/channel/e0;->b1(Lio/grpc/netty/shaded/io/netty/channel/k;)V

    .line 3
    invoke-direct {p0, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/e0;->l1(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->t1(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/e0;->w1(Lug/l;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object p1

    .line 6
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->C0(Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/b;)V

    .line 7
    iget-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->k:Z

    if-nez p2, :cond_0

    .line 8
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->n1()V

    const/4 p2, 0x1

    .line 9
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->X0(Lio/grpc/netty/shaded/io/netty/channel/b;Z)V

    .line 10
    monitor-exit p0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object p2

    .line 12
    invoke-interface {p2}, Lug/j;->Y()Z

    move-result p3

    if-nez p3, :cond_1

    .line 13
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->T0(Lio/grpc/netty/shaded/io/netty/channel/b;Lug/j;)V

    .line 14
    monitor-exit p0

    return-object p0

    .line 15
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->R0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected A1()V
    .locals 0

    return-void
.end method

.method public final B(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 3

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/o0;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->c:Lio/grpc/netty/shaded/io/netty/channel/e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lio/grpc/netty/shaded/io/netty/channel/o0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method protected B1(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/e0;->l:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "An exceptionCaught() event was fired, and it reached at the tail of the pipeline. It usually means the last handler in the pipeline did not handle the exception."

    invoke-interface {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 3
    throw v0
.end method

.method protected C1(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->D1(Ljava/lang/Object;)V

    .line 2
    sget-object p2, Lio/grpc/netty/shaded/io/netty/channel/e0;->l:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->names()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p1

    const-string v1, "Discarded message pipeline : {}. Channel : {}."

    .line 4
    invoke-interface {p2, v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected D1(Ljava/lang/Object;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/e0;->l:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "Discarded inbound message {} that reached at the tail of the pipeline. Please check your pipeline configuration."

    invoke-interface {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 3
    throw v0
.end method

.method public final E0(Lug/l;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p4}, Lio/grpc/netty/shaded/io/netty/channel/e0;->b1(Lio/grpc/netty/shaded/io/netty/channel/k;)V

    .line 3
    invoke-direct {p0, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/e0;->l1(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->t1(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/e0;->w1(Lug/l;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object p1

    .line 6
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->F0(Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/b;)V

    .line 7
    iget-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->k:Z

    if-nez p2, :cond_0

    .line 8
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->n1()V

    const/4 p2, 0x1

    .line 9
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->X0(Lio/grpc/netty/shaded/io/netty/channel/b;Z)V

    .line 10
    monitor-exit p0

    return-object p0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object p2

    .line 12
    invoke-interface {p2}, Lug/j;->Y()Z

    move-result p3

    if-nez p3, :cond_1

    .line 13
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->T0(Lio/grpc/netty/shaded/io/netty/channel/b;Lug/j;)V

    .line 14
    monitor-exit p0

    return-object p0

    .line 15
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->R0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected E1(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final F()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/f0;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->c:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/f0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    return-object v0
.end method

.method public final F1()Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method public final G0(Lug/l;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->b1(Lio/grpc/netty/shaded/io/netty/channel/k;)V

    .line 3
    invoke-direct {p0, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->l1(Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->w1(Lug/l;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->P0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    .line 5
    iget-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->k:Z

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->n1()V

    const/4 p2, 0x1

    .line 7
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->X0(Lio/grpc/netty/shaded/io/netty/channel/b;Z)V

    .line 8
    monitor-exit p0

    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object p2

    .line 10
    invoke-interface {p2}, Lug/j;->Y()Z

    move-result p3

    if-nez p3, :cond_1

    .line 11
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->T0(Lio/grpc/netty/shaded/io/netty/channel/b;Lug/j;)V

    .line 12
    monitor-exit p0

    return-object p0

    .line 13
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->R0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final varargs H0(Lug/l;[Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 4

    const-string v0, "handlers"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, p1, v3, v2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->G0(Lug/l;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public final I(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/b;->I(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public final J0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->E0(Lug/l;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p1

    return-object p1
.end method

.method public final J1()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/netty/shaded/io/netty/channel/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 3
    :goto_0
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    goto :goto_0
.end method

.method final K1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/b;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/r;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final N()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->e:Lio/grpc/netty/shaded/io/netty/channel/e1;

    return-object v0
.end method

.method public final O0(Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->s1(Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->G1(Lio/grpc/netty/shaded/io/netty/channel/b;)Lio/grpc/netty/shaded/io/netty/channel/b;

    return-object p0
.end method

.method public final varargs U([Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->H0(Lug/l;[Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p1

    return-object p1
.end method

.method public final W(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/k;",
            ">;)",
            "Lio/grpc/netty/shaded/io/netty/channel/m;"
        }
    .end annotation

    const-string v0, "handlerType"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    :goto_0
    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    goto :goto_0
.end method

.method public final W0(Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 2

    const-string v0, "handler"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    :goto_0
    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    goto :goto_0
.end method

.method public final c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/b;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public final c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public final close()Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lio/grpc/netty/shaded/io/netty/channel/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->c:Lio/grpc/netty/shaded/io/netty/channel/e;

    return-object v0
.end method

.method public final e1(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->f1(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/net/SocketAddress;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->f(Ljava/net/SocketAddress;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method protected g1(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->c:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->S()Lio/grpc/netty/shaded/io/netty/channel/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/s;->h(J)V

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/grpc/netty/shaded/io/netty/channel/k;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->W(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lio/grpc/netty/shaded/io/netty/channel/k;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->J1()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->M0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0
.end method

.method final k1()Lio/grpc/netty/shaded/io/netty/channel/r0$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->h:Lio/grpc/netty/shaded/io/netty/channel/r0$a;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->c:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->j()Lio/grpc/netty/shaded/io/netty/channel/r0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/r0;->a()Lio/grpc/netty/shaded/io/netty/channel/r0$a;

    move-result-object v0

    .line 3
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/e0;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->h:Lio/grpc/netty/shaded/io/netty/channel/r0$a;

    :cond_0
    return-object v0
.end method

.method public final m1()Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->H0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0
.end method

.method public final n1()Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->P0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0
.end method

.method public final names()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    goto :goto_0
.end method

.method public final o1()Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->R0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0
.end method

.method public final p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->I0(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final p1()Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-object p0
.end method

.method public final q()Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->F0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->t1(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->G1(Lio/grpc/netty/shaded/io/netty/channel/b;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->e1(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final t0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->t1(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->H1(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 5
    :goto_0
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x28

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    .line 12
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    if-ne v1, v2, :cond_1

    :goto_1
    const/16 v1, 0x7d

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v2, ", "

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected u1(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->c:Lio/grpc/netty/shaded/io/netty/channel/e;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->S()Lio/grpc/netty/shaded/io/netty/channel/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/s;->n(J)V

    :cond_0
    return-void
.end method

.method public final v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->Y0(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method final v1()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->i:Z

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->S0()V

    :cond_0
    return-void
.end method

.method public final w()Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->T0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0
.end method

.method public final x0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/e0;->A0(Lug/l;Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p1

    return-object p1
.end method

.method protected x1()V
    .locals 0

    return-void
.end method

.method protected y1()V
    .locals 0

    return-void
.end method

.method protected z1()V
    .locals 0

    return-void
.end method
